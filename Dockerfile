FROM n8nio/n8n:latest

USER root

# Install Chromium + minimal dependencies on Alpine
RUN apk update && \
    apk add --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ttf-freefont

# Tell the HTML-to-PDF node where Chromium is
ENV CHROME_PATH=/usr/bin/chromium-browser

USER node
