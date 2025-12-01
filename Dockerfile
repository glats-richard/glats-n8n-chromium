FROM n8nio/n8n:latest

USER root

# Install Chromium + fonts on Alpine Linux
RUN apk update && apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont

# Chromium on Alpine uses this path
ENV CHROME_PATH=/usr/bin/chromium-browser

USER node
