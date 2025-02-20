# Select Base Image (OS)
FROM node:18-alpine AS builder

# Working Directory for app
WORKDIR /app


# Copy project files from host to inside docker working directory
COPY package*.json ./

# Build the JavaScript Application
RUN npm ci

# Copy from host to docker images
COPY . .
RUN npm run build

#Use lightweight image for serving the app
FROM node:18-alpine

#Workdirectory 
WORKDIR /app

#COPY only necessary file from builder stage
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/public ./public
COPY --from=builder /app/src ./src
COPY --from=builder /app/index.css .
COPY --from=builder /app/index.html .
COPY --from=builder /app/vite.config.js .


# Expose the running port number
EXPOSE 5173

# Start the application
CMD ["npm", "run", "dev"]
