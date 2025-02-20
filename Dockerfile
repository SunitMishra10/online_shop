# Select Base Image (OS)
FROM node:18-alpine AS builder

# Working Directory for app
WORKDIR /app


# Copy project files from host to inside docker working directory
COPY package*.json ./

# Build the JavaScript Application
RUN npm ci

# Copy from host to docker images and build
COPY . .
RUN npm run build

#Use lightweight image for serving the app
FROM node:18-alpine

#Workdirectory 
WORKDIR /app

#COPY only necessary file from builder stage
COPY --from=builder /app/dist ./dist

#Install npm server globally
RUN npm install -g serve


# Expose the running port number
EXPOSE 3000

# Start the application
CMD ["serve", "-s", "dist"]
