# Use official n8n image
FROM n8nio/n8n:latest

# Copy env vars from Render into container
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_CONNECTION_URL=$postgresql://neondb_owner:npg_mISB5n1beJPC@ep-gentle-tooth-a15814mp-pooler.ap-southeast-1.aws.neon.tech/neondb?sslmode=require&channel_binding=require
ENV GENERIC_TIMEZONE=Asia/Kolkata
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Anshuk13
ENV N8N_ENCRYPTION_KEY=6cVtK3mPq9xD2sR7eJzB4aG1uHfYwT0L
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_HOST=n8n-76pi.onrender.com
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-76pi.onrender.com
ENV NODE_OPTIONS="--dns-result-order=ipv4first"

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
