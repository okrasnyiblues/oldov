#!/bin/bash

sed -i "s|- name: '\${PROM_NAME}'|- name: '$PROM_NAME'|g" /etc/grafana/provisioning/datasources/all.yml
sed -i "s|url: '\${PROM_URL}'|url: '$PROM_URL'|g" /etc/grafana/provisioning/datasources/all.yml
sed -i "s|- name: '\${ELASTIC_NAME}'|- name: '$ELASTIC_NAME'|g" /etc/grafana/provisioning/datasources/all.yml
sed -i "s|url: '\${ELASTIC_URL}'|url: '$ELASTIC_URL'|g" /etc/grafana/provisioning/datasources/all.yml
sed -i "s|"\${DS_ELASTICSEARCH-MONITORING}"|"$ELASTIC_NAME"|g" /var/lib/grafana/dashboards/elasticsearch-monitoring-based-on-x-pack-stats_rev1.json
sed -i "s|"\${DS_BBJ}"|"$PROM_NAME"|g" /var/lib/grafana/dashboards/bbj-jvm-overview_rev1.json
sed -i "s|"\${DS_PROMETHEUS}"|"$PROM_NAME"|g" /var/lib/grafana/dashboards/cassandra_rev2.json
sed -i "s|"\${DS_PROMETHEUS}"|"$PROM_NAME"|g" /var/lib/grafana/dashboards/tomcat-monitoring_rev1.json
sed -i "s|"\${DS_PROMETHEUS}"|"$PROM_NAME"|g" /var/lib/grafana/dashboards/docker-prometheus-monitoring_rev7.json
sed -i "s|"\${DS_PROMETHEUS}"|"$PROM_NAME"|g" /var/lib/grafana/dashboards/host-overview_rev2.json
