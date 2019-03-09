FROM alpine

LABEL org.label-schema.vcs-url="https://github.com/fdeschenes/drone-grafana-annotation.git" \
      org.label-schema.name="Drone Grafana Annotation" \
      org.label-schema.vendor="Francois Deschenes" \
      org.label-schema.schema-version="1.0"

COPY script.sh /bin/

RUN chmod +x /bin/script.sh && \
    apk -Uuv add curl ca-certificates

ENTRYPOINT ["/bin/script.sh"]
