# Use official n8n image
FROM n8nio/n8n:latest

# Install FFmpeg (needed for video compilation)
RUN apt-get update && apt-get install -y ffmpeg
