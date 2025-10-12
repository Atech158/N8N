# Use official Node.js LTS image
FROM node:20-bullseye

# Install n8n globally
RUN npm install -g n8n

# Set working directory
WORKDIR /usr/src/app

# Set environment variables
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_DATABASE=neondb
ENV DB_POSTGRESDB_HOST=ep-gentle-tooth-a15814mp-pooler.ap-southeast-1.aws.neon.tech
ENV DB_POSTGRESDB_USER=neondb_owner
ENV DB_POSTGRESDB_PASSWORD=npg_mISB5n1beJPC
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_SSL=true
ENV GENERIC_TIMEZONE=Asia/Kolkata
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Anshuk13
ENV N8N_ENCRYPTION_KEY=6cVtK3mPq9xD2sR7eJzB4aG1uHfYwT0L
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_HOST=n8n-76pi.onrender.com
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-76pi.onrender.com

# Expose port 5678
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
