import { QdrantClient } from '@qdrant/js-client-rest';
import { readFileSync } from 'fs';
import { createHash } from 'crypto';

const qdrant = new QdrantClient({ url: 'http://flint-vector-db:6333' });
const OLLAMA_URL = 'http://flint-embedder:11434';
const COLLECTION_NAME = 'flint_subconscious';

// Expecting: node ingest.js <path_to_file> <source_type>
const filePath = process.argv[2];
const sourceType = process.argv[3] || 'document';

if (!filePath) {
  console.error('Please provide a file path to ingest.');
  process.exit(1);
}

async function getEmbedding(text) {
  const response = await fetch(`${OLLAMA_URL}/api/embeddings`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ model: 'nomic-embed-text', prompt: text })
  });
  const data = await response.json();
  return data.embedding;
}

// Simple chunking by paragraphs/lines (approx 500-1000 tokens per chunk)
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

async function ingest() {
  try {
    console.log(`Reading file: ${filePath}`);
    const text = readFileSync(filePath, 'utf-8');
    
    console.log('Chunking text...');
    const chunks = chunkText(text);
    console.log(`Created ${chunks.length} chunks.`);

    const points = [];
    for (let i = 0; i < chunks.length; i++) {
      const chunk = chunks[i];
      console.log(`Embedding chunk ${i + 1}/${chunks.length}...`);
      const vector = await getEmbedding(chunk);
      
      // Generate a deterministic ID based on the text content
      const id = createHash('sha256').update(chunk).digest('hex').slice(0, 16);
      
      points.push({
        id: id,
        vector: vector,
        payload: {
          text: chunk,
          source: filePath,
          type: sourceType,
          chunk_index: i
        }
      });
    }

    console.log('Upserting chunks into Qdrant...');
    await qdrant.upsert(COLLECTION_NAME, {
      wait: true,
      points: points
    });

    console.log('✅ Ingestion complete! Context added to subconscious memory.');
  } catch (error) {
    console.error('Error during ingestion:', error);
  }
}

ingest();