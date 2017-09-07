FROM kibana:5.5.2

MAINTAINER HomeSOC <github@homesoc.tokyo>

ENV TZ='Asia/Tokyo'

# install x-Pack

USER kibana

RUN \
       gosu kibana-plugin install x-pack \
    && echo "### x-pack functions" >> /etc/kibana/kibana.yml \
    && echo "xpack.graph.enabled: false" >> /etc/kibana/kibana.yml \
    && echo "xpack.ml.enabled: false" >> /etc/kibana/kibana.yml \
    && echo "xpack.monitoring.enabled: true" >> /etc/kibana/kibana.yml \
    && echo "xpack.reporting.enabled: false" >> /etc/kibana/kibana.yml \
    && echo "xpack.security.enabled: false" >> /etc/kibana/kibana.yml

# X-PACK installed `NODE_OPTIONS`
ENV NODE_OPTIONS="--max-old-space-size=256"
