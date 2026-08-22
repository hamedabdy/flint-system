# PROJECT MEMORY LOG

## 1. PROJECT OVERVIEW
- **Goal:** Build a long-term software development workflow utilizing an LLM (Z.ai) as an expert Node.js Architect, bypassing the 1M token context window limitation.
- **Architecture Pattern:** External Memory Architecture (Simulating human conscious and subconscious memory).
- **Product:** Enterprise Data Management & Process Automation SaaS Platform (Multi-tenant, RBAC, Metadata-driven schema, Backoffice + Portal UI).

## 2. CURRENT STATE & PHASE
- **Phase:** 2 of 2 (Node.js Application Development & Frontend Integration).
- **Status:** Phase 1 complete. Subconscious memory online. Metadata models (`SysDbObject`, `SysDictionary`) implemented and refined. `Background Script` UI built and successfully connected to `flint-worker`. `FormLayoutSettings` modal built and wired into `DynamicForm` via `HeaderMenu`.
- **Next Steps:** 
  1. Implement XLSX and CSV ingestion parsers and their corresponding `sys_ui_page` interfaces.
  2. Expand test coverage for transform maps and error handling across all file formats.
  3. Ensure all new frontend components adhere to the CSS Module / Design Token constraints and commit log protocols.
  4. Design and implement a CSS dependency table for `sys_ui_page` to allow external stylesheet linking.
  5. Merge/replace `DynamicForm.jsx` with the new clone that utilizes the `sys_ui_form` layout config to dynamically render 1-col/2-col sections.

## 3. ARCHITECTURE DECISIONS LOG
- **[Prior] Chose `MEMORY.md` over a Database Table for the LLM interface:** Markdown is the native language of LLMs. Provides perfect hierarchy, avoids JSON/token bloat, allows human developer to easily read/edit state.
- **[Prior] Enforced the "Host Execution" Security Rule:** LLM must NEVER handle OAuth 2.1 M2M, private keys, or raw tokens. Host environment handles auth, fetches data, passes clean text to LLM.
- **[Prior] Rejected "Brute-Forcing" Context:** No pasting entire codebases. No standard Git logs.
- **[Prior] Chose Qdrant + Ollama for Subconscious Memory:** Qdrant selected as the Vector DB. Ollama selected to run local `nomic-embed-text` model to keep infrastructure secure, offline, and free.
- **[Prior] Containerized Memory Architecture:** All memory services deployed via Portainer/Docker Compose. `flint-vector-db` (Qdrant) and `flint-embedder` (Ollama) use internal Docker networking.
- **[Prior] Deferred Chat GUI:** The Chat GUI with the LLM hook is an external/standalone entity. The backend infrastructure to support it is ready and waiting.
- **[Prior] Built `flint-memory` Microservice:** Created a persistent Node.js/Express service with a Web GUI for ingesting files/text and searching the Vector DB. Supports hot-reloading via `nodemon` and multi-stage Docker builds.
- **[Prior] Implemented Deterministic IDs:** To prevent duplicate context in Qdrant, ingestion uses a SHA-256 hash of the text chunk (formatted as a UUID) instead of random UUIDs. Identical text overwrites existing memories.
- **[Prior] Standardized Payload Schema:** Vector payloads now use `sys_created_at` (ISO datetime) to align with the core MariaDB/Sequelize application schema. Qdrant payload index created for this field.
- **[Prior] Adopted Metadata-Driven Schema (ServiceNow pattern):** Platform data models are defined dynamically via system tables (`sys_db_object` for tables, `sys_dictionary` for fields). Table inheritance is enforced. Cascading deletes ensure referential integrity.
- **[Prior] Defined Multi-Tenancy & RBAC Strategy:** Data and users are isolated by "Scoped Apps". CRUD/View operations are restricted by Roles and ACLs at the table, field, and filter levels.
- **[Prior] Scoped MVP Import Feature:** Must support XLSX, XML, CSV. Flow: File Upload -> Staging Table Creation -> Transform Map (Auto/Manual field mapping) -> Target Table Import. Requires robust error handling/logging.
- **[Prior] Added Frontend Styling Constraints:** Strict prohibition on CSS-in-JS libraries (styled-components, Emotion). Frontend must use CSS Modules or plain CSS with design tokens. No inline styles except for dynamic values (e.g., animation state).
- **[Prior] Added Frontend Feature Freeze & Constraints:** Do not introduce regressions. Do not modify existing server API integration for the "All" menu panel. Do not implement "to do later" features (global search, chat panel, DB-fetched top menu)—leave clearly labeled, visually consistent placeholder components.
- **[Prior] Enforced Commit / Change Log Protocol:** All changes must be documented using a strict format: What changed, Why (GUI revamp / bug fix / TDD red-green / regression fix), Files affected, Test cases added, Regressions checked.
- **[Prior] Refined Metadata Models:** `SysDbObject.js` now formats display names by removing the `u_` prefix. `SysDictionary.js` `_copyParentFields` injects base system fields when no parent fields are found, ensuring unique records based on element attribute, and handles data types that don't require `max_length`.
- **[Prior] Utilized sys_ui_page for Custom UI Flows:** System admins can dynamically create React pages stored in `sys_ui_page` records. The core frontend automatically renders these, keeping the codebase clean and allowing custom interfaces (like the XML Import flow) to be managed via metadata.
- **[Today] Injected CSS for sys_ui_page limitation:** Since `sys_ui_page` currently only supports a single script field, CSS is injected via `<style>` tags inside the React component using strictly prefixed class names (`bg-script-*`) to prevent global DOM collisions.
- **[Today] Integrated flint-worker for Server-Side JS Execution:** Connected the Background Script `sys_ui_page` UI to the `flint-worker` microservice (`/api/exec-js` route) via Nginx `/worker/` proxy. Captures both `console.log` arrays and returned `result` objects, with an execution timer.
- **[Today] Defined sys_ui_form Architecture for Form Layouts:** Created `sys_ui_form` table (fields: `name`, `view`, `value`) to store JSON array configurations of form sections. Layouts are edited via a `FormLayoutSettings` modal (slushbucket UI) triggered from `HeaderMenu`.

## 4. RECENT CONTEXT CHANGES
- *Last updated: End of Day - Background Script & Form Layout Editor Implementation*
- Successfully built and connected the `Background Script` UI to `flint-worker`. Server-side JS execution is operational from the UI. Fixed a CSS contrast bug by hardcoding textarea background/text colors.
- Designed and implemented `FormLayoutSettings.jsx`, a 2-pane slushbucket modal supporting 1-column and 2-column sections. "General" section is permanently enforced.
- Wired `FormLayoutSettings` into `DynamicForm.jsx`, `PageHeader.jsx`, and `HeaderMenu.jsx` using callback props (`onFormLayoutClick`) to open a modal instead of triggering a page redirect.
- Added API integration to fetch/save layout JSON to `sys_ui_form` via generic table APIs.
- Next immediate steps: Merge the `DynamicForm` layout rendering logic so the form actually renders 1-col/2-col sections based on the saved JSON config. Continue with XLSX/CSV ingestion parsers.
- The `flint-memory` Vector DB continues to serve as the primary subconscious recall mechanism.

## 5. IMPLEMENTED PROTOCOLS (RULES FOR THE AI)

### Protocol A: The Wake-Up Routine (Start of Day)
1. Human injects the entirety of this `MEMORY.md` file into the System Prompt.
2. AI reads ONLY Sections 1, 2, and 4 to instantly understand project state and next steps.
3. AI does NOT read the whole file or try to recall past days autonomously.

### Protocol B: The Subconscious Lookup (During Work)
1. When AI needs to see actual code, logic, or old history, it must NOT guess or hallucinate.
2. AI must ask the human to query the Vector DB (via `flint-memory` GUI or API), OR ask the human to paste the specific file.
3. *Future State:* A background script will auto-query the Vector DB based on the AI's prompt and inject the chunks invisibly.

### Protocol C: The End-Of-Day Routine (Wrap Up)
1. Human prompts: "End of day".
2. AI must summarize today's work, update Section 2 (Current State & Phase), append any hard rules to Section 3 (Decisions), and clear/rewrite Section 4 (Recent Context).
3. AI must output the updated `MEMORY.md` text strictly inside a raw text code block using ONLY triple backticks (```). DO NOT use a language tag (e.g., DO NOT use ```markdown). This ensures the Chat GUI does not render it, allowing the human to easily copy and save.
4. Chat RAM is wiped. Sleep.

### Protocol D: The Archive Protocol (Maintenance)
1. If `MEMORY.md` ever exceeds 2,000 tokens, trigger an archive.
2. Move all decisions older than 30 days from Section 3 into a file called `ARCHIVE.md`.
3. Run the `ARCHIVE.md` contents through the Vector DB embedding script (via `flint-memory` API) so it enters "subconscious" storage.
4. Keep `MEMORY.md` lean and fast.

### Protocol E: Agent Mode Policy
1. Currently operating in "Human-in-the-loop" mode. AI writes code, human pastes/executes.
2. AI must provide ALL code, file contents, and markdown updates strictly inside raw text code blocks using ONLY triple backticks (```). NEVER use language tags (e.g., no ```javascript, no ```markdown) to prevent Chat GUI rendering and ensure clean copy-pasting for the human.