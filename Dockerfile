FROM node:20-slim

# OpenClaw বিশ্বব্যাপী ইনস্টল করা
RUN npm install -g openclaw

# সরাসরি Binary Path দিয়ে Command রান করা
CMD ["npx", "openclaw", "gateway", "--allow-remote-config"]
