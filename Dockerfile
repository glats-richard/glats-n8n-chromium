FROM n8nio/n8n:latest

USER root

# Create a separate place for custom node modules and install pdfkit there
RUN mkdir -p /data && \
    cd /data && \
    npm init -y && \
    npm install pdfkit && \
    npm cache clean --force

# Allow Code node to use this external module
ENV NODE_FUNCTION_ALLOW_EXTERNAL=pdfkit
ENV NODE_FUNCTION_ALLOW_BUILTIN=*
# Tell Node where to look for our custom modules
ENV NODE_PATH=/data/node_modules

USER node
