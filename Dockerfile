FROM n8nio/n8n:latest

USER root

RUN apk update && \
    apk add --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ttf-freefont

# 👇 point to the actual binary name
ENV CHROME_PATH=/usr/bin/chromium

USER node
