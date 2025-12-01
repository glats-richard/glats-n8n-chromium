FROM n8nio/n8n:latest

USER root

# Install pdfkit globally so Node can require() it
RUN npm install -g pdfkit && \
    npm cache clean --force

# Allow Code node to use builtin + external modules
ENV NODE_FUNCTION_ALLOW_BUILTIN=*
ENV NODE_FUNCTION_ALLOW_EXTERNAL=pdfkit

USER node
