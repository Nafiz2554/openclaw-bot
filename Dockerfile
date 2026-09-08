# OpenClaw-এর অফিসিয়াল প্রি-বিল্ট ইমেজ (যার জন্য বিল্ড মেমোরি লাগে না)
FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 8080

CMD ["openclaw", "gateway", "--allow-remote-config", "--port", "8080"]
