# Select Base Image (OS)
FROM node:18-alpine

# Working Directory for app
WORKDIR /app




# Copy project files from host to inside docker working directory
COPY . .

# Build the JavaScript Application
RUN npm install && npm run build



# Expose the running port number
EXPOSE 5173

# Start the application
CMD ["npm", "run", "dev"]
