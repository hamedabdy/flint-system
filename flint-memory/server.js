import express from 'express';
import multer from 'multer';
import { QdrantClient } from '@qdrant/js-client-rest';
import { createHash } from 'crypto';

const app = express();
app.use(express.json());
const upload = multer({ storage: multer.memoryStorage() });

const qdrant = new QdrantClient({ url: 'http://flint-vector-db:6333' });
const OLLAMA_URL = 'http://flint-embedder:11434';
const COLLECTION_NAME = 'flint_subconscious';

// --- Helper Functions ---
async function getEmbedding(text) {
  const response = await fetch(`${OLLAMA_URL}/api/embeddings`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ model: 'nomic-embed-text', prompt: text })
  });
  const data = await response.json();
  return data.embedding;
}

function chunkText(text, maxChunkSize = 1000) {
  const paragraphs = text.split('\n\n');
  const chunks = [];
  let currentChunk = '';
  for (const p of paragraphs) {
    if ((currentChunk + p).length > maxChunkSize) {
      if (currentChunk) chunks.push(currentChunk.trim());
      currentChunk = p;
    } else {
      currentChunk += '\n\n' + p;
    }
  }
  if (currentChunk) chunks.push(currentChunk.trim());
  return chunks;
}

function generateDeterministicId(text) {
  const hash = createHash('sha256').update(text).digest('hex');
  // Format the first 32 chars of the hash into a standard UUID format (8-4-4-4-12)
  return `${hash.slice(0,8)}-${hash.slice(8,12)}-${hash.slice(12,16)}-${hash.slice(16,20)}-${hash.slice(20,32)}`;
}

// --- Initialization Function ---
async function initializeCollection() {
  try {
    const collections = await qdrant.getCollections();
    const exists = collections.collections.some(c => c.name === COLLECTION_NAME);

    if (!exists) {
      console.log(`[Init] Creating collection: ${COLLECTION_NAME}`);
      await qdrant.createCollection(COLLECTION_NAME, {
        vectors: { size: 768, distance: 'Cosine' }
      });
      
      // Create an index on the 'sys_created_at' field for efficient filtering
      await qdrant.createPayloadIndex(COLLECTION_NAME, {
        field_name: 'sys_created_at',
        field_schema: 'datetime'
      });
      console.log(`[Init] Created payload index for 'sys_created_at'.`);
    } else {
      console.log(`[Init] Collection ${COLLECTION_NAME} already exists.`);
    }
  } catch (error) {
    console.error('[Init] Error initializing collection:', error);
  }
}

// --- API Routes ---
app.post('/api/ingest', upload.single('file'), async (req, res) => {
  try {
    if (!req.file) return res.status(400).send('No file uploaded.');
    
    const text = req.file.buffer.toString('utf-8');
    const source = req.file.originalname;
    const type = req.body.type || 'uploaded_file';

    console.log(`[Ingest] Received file: ${source} (${text.length} chars)`);

    const chunks = chunkText(text);
    const points = [];

    for (let i = 0; i < chunks.length; i++) {
      const chunk = chunks[i];
      const vector = await getEmbedding(chunk);
      const id = generateDeterministicId(chunk);
      
      points.push({
        id: id,
        vector: vector,
        payload: { 
            text: chunk, 
            source, 
            type, 
            chunk_index: i,
            sys_created_at: new Date().toISOString()
        }
      });
    }

    await qdrant.upsert(COLLECTION_NAME, { wait: true, points });
    console.log(`[Ingest] Successfully ingested ${points.length} chunks from ${source}.`);
    
    res.json({ success: true, message: `Ingested ${points.length} chunks.` });
  } catch (error) {
    console.error('[Ingest] Error:', error);
    res.status(500).json({ error: error.message });
  }
});

app.post('/api/search', async (req, res) => {
  try {
    const { query } = req.body;
    if (!query) return res.status(400).json({ error: 'Query is required' });

    console.log(`[Search] Querying: "${query}"`);
    const vector = await getEmbedding(query);

    const searchResults = await qdrant.search(COLLECTION_NAME, {
      vector: vector,
      limit: 3, // Get top 3 matches
      with_payload: true
    });

    const results = searchResults.map(match => ({
      score: match.score.toFixed(4),
      text: match.payload.text,
      source: match.payload.source,
      sys_created_at: match.payload.sys_created_at 
    }));

    console.log(`[Search] Found ${results.length} results.`);
    res.json({ results });
  } catch (error) {
    console.error('[Search] Error:', error);
    res.status(500).json({ error: error.message });
  }
});

app.post('/api/ingest-text', async (req, res) => {
  try {
    const { text, type } = req.body;
    if (!text || !text.trim()) return res.status(400).json({ error: 'Text is required' });

    const source = 'manual_text_input';
    const contextType = type || 'manual_note';

    console.log(`[Ingest] Received manual text: (${text.length} chars)`);

    const chunks = chunkText(text);
    const points = [];

    for (let i = 0; i < chunks.length; i++) {
      const chunk = chunks[i];
      const vector = await getEmbedding(chunk);
      const id = generateDeterministicId(chunk);
      
      points.push({
        id: id,
        vector: vector,
        payload: { 
            text: chunk, 
            source, 
            type: contextType, 
            chunk_index: i,
            sys_created_at: new Date().toISOString()
        }
      });
    }

    await qdrant.upsert(COLLECTION_NAME, { wait: true, points });
    console.log(`[Ingest] Successfully ingested ${points.length} chunks from manual text.`);
    
    res.json({ success: true, message: `Ingested ${points.length} chunks.` });
  } catch (error) {
    console.error('[Ingest Text] Error:', error);
    res.status(500).json({ error: error.message });
  }
});

// --- Serve Simple Web GUI ---
const HTML = `
<!DOCTYPE html>
<html>
<head>
  <title>Flint Subconscious Memory</title>
  <style>
    body { font-family: sans-serif; max-width: 800px; margin: 50px auto; background: #f4f4f9; }
    .card { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); margin-bottom: 20px; }
    input[type="file"], input[type="text"], textarea { margin-top: 10px; width: 100%; padding: 8px; box-sizing: border-box; font-family: sans-serif; }
    textarea { min-height: 100px; resize: vertical; }
    button { padding: 10px 15px; background: #2563eb; color: white; border: none; border-radius: 4px; cursor: pointer; margin-top: 10px; }
    button:hover { background: #1d4ed8; }
    #status, #textStatus, #searchStatus { margin-top: 15px; font-weight: bold; }
    #status { color: green; }
    #textStatus { color: green; }
    #searchStatus { color: blue; }
    .result-item { border-left: 3px solid #2563eb; padding: 10px; margin-top: 10px; background: #f8fafc; }
    .result-score { font-size: 0.8em; color: #64748b; }
    .result-source { font-size: 0.8em; color: #475569; font-style: italic; }
    .result-text { white-space: pre-wrap; margin-top: 5px; }
  </style>
</head>
<body>
  <div class="card">
    <h2>1. A. Upload Context File</h2>
    <form id="uploadForm">
      <input type="file" name="file" accept=".txt,.md,.js,.json" required>
      <button type="submit">Ingest File</button>
    </form>
    <div id="status"></div>
  </div>

  <div class="card">
    <h2>1. B. Or Paste Context Manually</h2>
    <form id="textForm">
      <textarea id="textInput" placeholder="Paste code, architecture decisions, or notes here..."></textarea>
      <button type="submit">Ingest Text</button>
    </form>
    <div id="textStatus"></div>
  </div>

  <div class="card">
    <h2>2. Search Subconscious Memory</h2>
    <form id="searchForm">
      <input type="text" id="searchQuery" placeholder="e.g., Where is the database configured?">
      <button type="submit">Search</button>
    </form>
    <div id="searchStatus"></div>
    <div id="searchResults"></div>
  </div>

  <script>
    document.getElementById('uploadForm').addEventListener('submit', async (e) => {
      e.preventDefault();
      const status = document.getElementById('status');
      status.innerText = 'Ingesting... (this may take a moment)';
      
      const formData = new FormData(e.target);
      try {
        const res = await fetch('/api/ingest', { method: 'POST', body: formData });
        const data = await res.json();
        if (res.ok) {
          status.innerText = '✅ ' + data.message;
        } else {
          status.innerText = '❌ Error: ' + data.error;
        }
      } catch (err) {
        status.innerText = '❌ Network Error';
      }
    });

    document.getElementById('textForm').addEventListener('submit', async (e) => {
      e.preventDefault();
      const text = document.getElementById('textInput').value;
      const status = document.getElementById('textStatus');
      
      if (!text.trim()) return;
      
      status.innerText = 'Ingesting text...';
      try {
        const res = await fetch('/api/ingest-text', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ text })
        });
        const data = await res.json();
        if (res.ok) {
          status.innerText = '✅ ' + data.message;
          document.getElementById('textInput').value = ''; // Clear on success
        } else {
          status.innerText = '❌ Error: ' + data.error;
        }
      } catch (err) {
        status.innerText = '❌ Network Error';
      }
    });

    document.getElementById('searchForm').addEventListener('submit', async (e) => {
      e.preventDefault();
      const query = document.getElementById('searchQuery').value;
      const status = document.getElementById('searchStatus');
      const resultsDiv = document.getElementById('searchResults');
      
      status.innerText = 'Searching...';
      resultsDiv.innerHTML = '';

      try {
        const res = await fetch('/api/search', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ query })
        });
        const data = await res.json();
        
        if (res.ok) {
          status.innerText = 'Found ' + data.results.length + ' matches:';
          data.results.forEach(result => {
            const item = document.createElement('div');
            item.className = 'result-item';
            // Format the date nicely for display
            const dateObj = new Date(result.sys_created_at);
            const formattedDate = dateObj.toLocaleString();
            item.innerHTML = \`
              <div class="result-score">Score: \${result.score}</div>
              <div class="result-source">Source: \${result.source}</div>
              <div class="result-date" style="font-size: 0.8em; color: #64748b;">Created: \${formattedDate}</div>
              <div class="result-text">\${result.text}</div>
            \`;
            resultsDiv.appendChild(item);
          });
        } else {
          status.innerText = '❌ Error: ' + data.error;
        }
      } catch (err) {
        status.innerText = '❌ Network Error';
      }
    });
  </script>
</body>
</html>
`;

app.get('/', (req, res) => res.send(HTML));


// --- Start Server ---
const PORT = 3000;
// Call initialize before starting the server
initializeCollection().then(() => {
  app.listen(PORT, () => {
    console.log(`Flint Memory GUI running on port ${PORT}`);
  });
});