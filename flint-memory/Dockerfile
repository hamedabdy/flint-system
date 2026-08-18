# Base stage
FROM node:20-alpine AS base

WORKDIR /app

COPY package.json ./

# Development stage
FROM base AS development
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "run", "dev"]

# Production stage (for later)
FROM base AS production
ENV NODE_ENV=production
RUN npm install --omit=dev
COPY server.js ./
EXPOSE 3000
CMD ["node", "server.js"]