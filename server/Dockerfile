# Stage 1: Build the server
FROM node:16-alpine as build
WORKDIR /app
COPY server/package*.json ./
RUN npm install
COPY server .
RUN npm run build

# Stage 2: Create a lightweight production image
FROM node:16-alpine
WORKDIR /app
COPY --from=build /app/dist ./dist
RUN npm install --production
CMD ["node", "index.js"]
