FROM n8nio/n8n:latest

USER root

# Install Python + pip on Alpine, and fpdf2
RUN apk update && \
    apk add --no-cache python3 py3-pip && \
    pip3 install --break-system-packages fpdf2 && \
    rm -rf /var/cache/apk/*

# Allow Code node (Node.js) external modules if needed – harmless to keep
ENV NODE_FUNCTION_ALLOW_EXTERNAL=fpdf2
ENV NODE_FUNCTION_EXTERNAL_MODULES=fpdf2

USER node
