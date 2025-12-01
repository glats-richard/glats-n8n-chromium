FROM n8nio/n8n:latest

USER root

# Install pdfkit into n8n's node_modules
RUN cd /usr/local/lib/node_modules/n8n && \
    npm install pdfkit && \
    npm cache clean --force

# Allow Code node to use external modules & built-ins
ENV NODE_FUNCTION_ALLOW_EXTERNAL=pdfkit
ENV NODE_FUNCTION_ALLOW_BUILTIN=*

USER node
