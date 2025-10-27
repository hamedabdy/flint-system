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
- Frontend: React with Material-UI
- Infrastructure: Docker for containerization

## Project Structure

### Core Components

#### 1. core-server/
Core API server handling CRUD operations and business logic.

```
core-server/
├── src/
│   ├── server.js           # Main application entry point
│   ├── config/            
│   │   └── database.js     # Database configuration
│   ├── middleware/
│   │   ├── authenticator.js       # Authentication middleware
│   │   ├── databaseMiddleware.js  # Database connection handling
│   │   └── errorMiddleware.js     # Error handling
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
│   │   ├── DbBackup.js           # Database backup service
│   │   ├── DotWalking.js         # Property traversal service
│   │   └── Sequelizer.js         # Database ORM service
│   └── utils/
│       ├── QueryLitteral.js      # Query builder
│       └── utils.js              # Utility functions
```

#### 2. core-ui-react/
Frontend React application with Material-UI components.

```
core-ui-react/
├── public/                # Static assets
└── src/
    ├── components/
    │   ├── Home.js
    │   ├── TableList.js
    │   ├── dynamicForm/   # Dynamic form components
    │   ├── dynamicList/   # Dynamic list components
    │   ├── simpleForm/    # Basic form components
    │   └── simpleList/    # Basic list components
    ├── newHome/
    │   ├── Content.js     # Main content component
    │   ├── Header.js      # Application header
    │   ├── Navigator.js   # Navigation component
    │   └── Paperbase.js   # Base layout component
    └── services/
        └── ApiService.js  # API integration service
```

#### 3. selfimprove-app/
Server application for executing JS and shell scripts with AI capabilities.

```
selfimprove-app/
├── src/
│   ├── server.js         # Server entry point
│   ├── __tests__/        # Test files
│   ├── modules/          # Application modules
│   ├── public/          
│   │   ├── exec-js.html  # JavaScript execution interface
│   │   └── exec-shell.html # Shell execution interface
│   └── routes/
        └── execJs.js     # JavaScript execution routes
```

#### 4. core-db/
Database management and backup utilities.

```
core-db/
├── backup_node_project_db.sh    # Database backup script
├── init.sql.template            # Database initialization template
├── my.cnf                       # MariaDB configuration
├── restore-latest-backup.sh     # Database restoration script
└── db-backups/                  # Backup storage directory
```

#### 5. rproxy/
Reverse proxy configuration for the application.

```
rproxy/
├── Dockerfile            # Nginx container configuration
├── nginx.conf           # Basic nginx configuration
├── nginx.conf.https     # HTTPS-enabled configuration
└── renew-cert.sh       # SSL certificate renewal script
```

## Data Flow

1. Client requests → rproxy (Nginx) → core-ui-react (Frontend)
2. API calls → core-server (Backend) → MariaDB (Database)
3. Script execution → selfimprove-app → core-server

## Development Setup

The application uses Docker Compose for development and production environments:
- `docker-compose.yml` - Production configuration
- `docker-compose.dev.yml` - Development configuration

## Backup System

Database backups are managed through:
- Automated backup scripts in core-db/
- Backup storage in core-db/db-backups/
- Restoration utilities for recovery

## Security Architecture

- Nginx reverse proxy for request filtering
- Authentication middleware in core-server
- HTTPS configuration available
- Database access control through Sequelize