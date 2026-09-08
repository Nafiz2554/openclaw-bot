FROM node:20-slim

# প্রয়োজনীয় টুলস ইনস্টল
RUN apt-get update && apt-get install -y ca-certificates git && rm -rf /var/lib/apt/lists/*

# Global npm directory ঠিক করা
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

# OpenClaw ইনস্টল করা
RUN npm install -g openclaw

# Gateway চালুর কমান্ড
CMD ["openclaw", "gateway", "--allow-remote-config"]
