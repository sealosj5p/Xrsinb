FROM python:3.11-alpine

RUN apk add --no-cache openssl curl bind-tools ca-certificates

WORKDIR /app

COPY app.py /app/app.py

RUN mkdir -p /tmp/xray-sing

EXPOSE 2705/tcp 2705/udp

CMD ["python", "app.py"]
