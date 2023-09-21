# Stage 1: Build the Node.js app
FROM node:14 as build
WORKDIR /app
COPY server/package*.json ./
RUN npm install
COPY server .
RUN npm run build

# Stage 2: Create a lightweight production image
FROM node:14-alpine
WORKDIR /app
COPY --from=build /app/dist ./dist
RUN npm install --production
CMD ["node", "index.js"]
