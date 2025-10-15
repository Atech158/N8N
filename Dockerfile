# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /usr/src/app

# Copy package.json if you want custom nodes (optional)
# COPY package.json ./
# RUN npm install

# Default command is already n8n in the official image
# CMD ["n8n"]
