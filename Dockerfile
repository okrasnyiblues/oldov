FROM grafana/grafana:5.3.4
USER root

ENV PROM_URL http://localhost:9090
ENV PROM_NAME PROMETHEUS
ENV ELASTIC_NAME ELASTIC
ENV ELASTIC_URL http://localhost:9200

COPY ./ext/provisioning /etc/grafana/provisioning
COPY ./ext/config.ini /etc/grafana/config.ini
COPY ./ext/dashboards /var/lib/grafana/dashboards
COPY ./ext/sed.sh /etc/sed.sh

RUN chown -R grafana /var/lib/grafana/dashboards
RUN chown root /run.sh
RUN sed -i "4i\'/etc/sed.sh'\n" /run.sh
RUN chown grafana /run.sh
RUN chown -R grafana /etc/grafana/provisioning

USER grafana




