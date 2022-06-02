# collector-honeytail-logs
Getting logs into OTel collector --> using Honeytail to send to Honeycomb

- Sets up collector with `otel-local-confg.yml` using file exporter for logs. 
- Sets up honeytail to send logs from collector output logs to Honeycomb

## Quickstart

```
export HONEYCOMB_API_KEY=<your-honeycomb-key>
export HONEYCOMB_DATASET=<your-dataset-name>

docker-compose up -d --build
```
