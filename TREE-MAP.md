# Node Application Tree Map

This document provides a comprehensive map of the application architecture and structure.

## Overall Architecture

The application is a SaaS web application designed to help enterprises organize their:
- CMDB (Configuration Management Database)
- HR Management
- Referential Data (locations, users, groups, companies)
- Financial Portfolios

### Technology Stack
- Backend: Node.js with Express.js
- Database: MariaDB with Sequelize ORM
- Frontend: React with Material-UI (Vite)
- Infrastructure: Docker for containerization
- AI Memory: Qdrant (Vector DB) + Ollama (Local Embeddings)

## Project Structure

### Core Components

#### 1. flint-core/
Core API server handling CRUD operations and business logic.

flint-core/
├── src/
│   ├── server.js           # Main application entry point
│   ├── config/            
│   │   └── database.js     # Database configuration
│   ├── middleware/
│   │   ├── authenticator.js       # Authentication middleware
│   │   ├── databaseMiddleware.js  # Database connection handling
│   │   ├── errorMiddleware.js     # Error handling
│   │   ├── genericRouterPostMiddleware.js
│   │   └── xmlImportHandler.js
│   ├── models/
│   │   ├── BaseModel.js          # Base model class
│   │   ├── dataTypes.js          # Custom data types
│   │   ├── SysDbObject.js        # Database object model
│   │   ├── SysDictionary.js      # Dictionary model
│   │   ├── SysGlideObject.js     # Glide object model
│   │   └── SysMetaData.js        # Metadata model
│   ├── routes/
│   │   ├── index.js              # Main router
│   │   └── tableApi.js           # Table operations API
│   ├── services/
│   │   ├── compileJsx.js
│   │   ├── DbBackup.js           # Database backup service
│   │   ├── DotWalking.js         # Property traversal service
│   │   ├── SchemaManager.js
│   │   ├── Sequelizer.js         # Database ORM service
│   │   └── XmlImport.js
│   └── utils/
│       ├── QueryLitteral.js      # Query builder
│       └── utils.js              # Utility functions

#### 2. flint-face/
Frontend React application with Material-UI components.

flint-face/
├── public/
└── src/
    ├── App.jsx
    ├── components/
    │   ├── Home.jsx
    │   ├── TableList.jsx
    │   ├── dynamicForm/       # Dynamic form components
    │   ├── dynamicList/       # Dynamic list components
    │   ├── dynamicPageLoad/   # Page loaders & Error boundaries
    │   ├── shared/            # Shared components (HeaderMenu)
    │   ├── simpleForm/        # Basic form components
    │   └── simpleList/        # Basic list components
    ├── newHome/               # Main layout framework
    │   ├── Content.jsx
    │   ├── Paperbase.jsx
    │   ├── SidePanel.jsx
    │   └── TopNav.jsx
    └── services/
        ├── ApiService.ts      # API integration service
        └── userPreferenceService.js

#### 3. flint-worker/
Server application for executing JS and shell scripts with AI capabilities. (Standby project, formerly flint-assist).

flint-worker/
├── src/
│   ├── server.js         # Server entry point
│   ├── __tests__/        # Test files
│   ├── modules/          # Webpack config
│   ├── public/          
│   │   ├── exec-js.html  # JavaScript execution interface
│   │   └── exec-shell.html # Shell execution interface
│   ├── routes/
│   │   ├── execJs.js     # JavaScript execution routes
│   │   ├── execShell.js  # Shell execution routes
│   │   ├── goal.js
│   │   └── status.js
│   └── utils/
│       ├── FileUpdateManager.js
│       ├── goalHandler.js
│       ├── LlmApiClient.js
│       ├── logger.js
│       ├── ShellCommandExecutor.js
│       └── TestAndRevertManager.js

#### 4. flint-db/
Database management and backup utilities.

flint-db/
├── backup_node_project_db.sh    # Database backup script
├── init.sql.template            # Database initialization template
├── my.cnf                       # MariaDB configuration
├── restore-latest-backup.sh     # Database restoration script
└── db-backups/                  # Backup storage directory

#### 5. flint-memory/
AI Subconscious Memory Service. Node.js/Express Web GUI for ingesting and searching project context via a Vector Database.

flint-memory/
├── server.js             # Express server, GUI, and Qdrant/Ollama API routes
├── injest.js             # Standalone CLI ingestion script (legacy)
└── package.json

#### 6. rproxy/
Reverse proxy configuration for the application.

rproxy/
├── Dockerfile            # Nginx container configuration
├── nginx.conf           # Basic nginx configuration
├── nginx.conf.https     # HTTPS-enabled configuration
└── renew-cert.sh       # SSL certificate renewal script

## Infrastructure & AI Stack (Docker Compose)
- `flint-core`: Core API (Port 3010)
- `flint-face`: React Frontend (Port 3001)
- `flint-worker`: Script execution & AI worker (Port 3002)
- `flint-db`: MariaDB Database (Port 3306)
- `flint-vector-db`: Qdrant Vector Database for AI memory (Port 6333)
- `flint-embedder`: Ollama local embedding model service - nomic-embed-text (Port 11434)
- `flint-memory`: Web GUI for Vector DB ingestion/search (Port 3003)
- `nginx`: Reverse proxy (Ports 8090, 7443)

## Data Flow

1. Client requests → rproxy (Nginx) → flint-face (Frontend)
2. API calls → flint-core (Backend) → MariaDB (Database)
3. Script execution → flint-worker → flint-core
4. AI Memory Ingestion → flint-memory → flint-embedder → flint-vector-db
5. AI Memory Lookup → flint-memory → flint-embedder → flint-vector-db

## Development Setup

The application uses Docker Compose for development and production environments:
- `docker-compose.yml` - Production configuration
- `docker-compose.dev.yml` - Development configuration (features hot-reloading via nodemon and volume mounting)

## Backup System

Database backups are managed through:
- Automated backup scripts in flint-db/
- Backup storage in flint-db/db-backups/
- Restoration utilities for recovery

## Security Architecture

- Nginx reverse proxy for request filtering
- Authentication middleware in flint-core
- HTTPS configuration available
- Database access control through Sequelize
- Local AI execution (Ollama) prevents data leakage to external APIs