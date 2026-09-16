FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

COPY . .

EXPOSE 3000

# RUN chmod -R 777 /app

CMD ["python", "app.py"]
