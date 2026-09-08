FROM node:20-slim
RUN npm install -g openclaw
WORKDIR /app
CMD ["openclaw", "gateway", "--allow-remote-config"]
