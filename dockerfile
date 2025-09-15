# Use official n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install FFmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Clean up to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node

# Start n8n (default entrypoint)
ENTRYPOINT ["n8n"]
