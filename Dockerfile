FROM prom/prometheus:v2.5.0
ARG ENVIRONMENT
COPY ext/hu-fat/prometheus-erste.yml /etc/prometheus/prometheus-erste.yml
USER root 
RUN chmod 755 /etc/prometheus/prometheus-erste.yml
USER nobody

EXPOSE     9090
VOLUME     [ "/prometheus" ]
WORKDIR    /prometheus
ENTRYPOINT [ "/bin/prometheus" ]
CMD        [ "--config.file=/etc/prometheus/prometheus-erste.yml", \
             "--storage.tsdb.path=/prometheus", \
             "--web.console.libraries=/usr/share/prometheus/console_libraries", \
             "--web.console.templates=/usr/share/prometheus/consoles" ]
  
