FROM docker.elastic.co/kibana/kibana:5.5.2

MAINTAINER HomeSOC <github@homesoc.tokyo>

ENV TZ='Asia/Tokyo'

USER root
# install x-Pack
RUN \
    # TIMEZONE
       apt update -y \
    && apt upgrade -y \
    && apt-get install -y \
          tzdata \
    \
    && echo "### x-pack functions" >> /etc/kibana/kibana.yml \
    && echo "xpack.graph.enabled: false" >> /etc/kibana/kibana.yml \
    && echo "xpack.ml.enabled: false" >> /etc/kibana/kibana.yml \
    && echo "xpack.monitoring.enabled: true" >> /etc/kibana/kibana.yml \
    && echo "xpack.reporting.enabled: false" >> /etc/kibana/kibana.yml \
    && echo "xpack.security.enabled: false" >> /etc/kibana/kibana.yml \
    # Clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER kibana

# X-PACK installed `NODE_OPTIONS`
ENV NODE_OPTIONS="--max-old-space-size=256"
