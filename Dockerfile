FROM n8nio/n8n:latest

USER root

# Install Chromium + dependencies
RUN apt-get update && \
    apt-get install -y \
      chromium \
      chromium-driver \
      fonts-liberation \
      libatk1.0-0 \
      libatk-bridge2.0-0 \
      libcups2 \
      libatspi2.0-0 \
      libxcomposite1 \
      libxdamage1 \
      libxrandr2 \
      libgbm1 \
      libpango-1.0-0 \
      libasound2 \
      libxshmfence1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV CHROME_PATH=/usr/bin/chromium

USER node
