FROM n8nio/n8n:latest

USER root

# Install Python + pip on Alpine
RUN apk update && \
    apk add --no-cache python3 py3-pip && \
    pip3 install fpdf2 && \
    rm -rf /var/cache/apk/*

# Allow Python Code node to import fpdf2
ENV NODE_FUNCTION_ALLOW_EXTERNAL=fpdf2
ENV NODE_FUNCTION_EXTERNAL_MODULES=fpdf2

USER node
