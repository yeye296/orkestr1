FROM node:20-bookworm-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN npm install koffi@^2.9.2

COPY . .

RUN chmod +x main

ENV PORT=3000
EXPOSE 3000

CMD ["./main"]
