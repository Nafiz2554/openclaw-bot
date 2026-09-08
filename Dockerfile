FROM node:20-slim

# প্রয়োজনীয় সিস্টেম ডিপেন্ডেন্সি ইনস্টল
RUN apt-get update && apt-get install -y ca-certificates git && rm -rf /var/lib/apt/lists/*

# Global npm directory সেটআপ
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

# OpenClaw ইনস্টল
RUN npm install -g openclaw

# Render-এর জন্য পোর্ট এক্সপোজ
EXPOSE 8080

# Gateway চালুর কমান্ড
CMD ["openclaw", "gateway", "--allow-remote-config", "--port", "8080"]
