# drone-grafana-annotation

Drone plugin to create an annotation in Grafana. For the usage information and a listing of the available options please take a look at the docs.

## Docker

Build the Docker image with the following command:

```bash
docker build \
  --label org.label-schema.build-date=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
  --label org.label-schema.vcs-ref=$(git rev-parse --short HEAD) \
  --tag fdeschenes/drone-grafana-annotation .
```

## Usage

```bash
docker run --rm \
  -e PLUGIN_URL=https://grafana.example.com \
  -e PLUGIN_API_KEY=xxxxx \
  -e PLUGIN_TAGS="deploy,production" \
  -e PLUGIN_TEXT="Deployed" \
  fdeschenes/drone-grafana-annotation
```
