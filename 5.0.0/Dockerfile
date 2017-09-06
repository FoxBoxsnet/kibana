FROM kibana:5.5.2

MAINTAINER HomeSOC <github@homesoc.tokyo>

ENV TZ='Asia/Tokyo'

# install x-Pack
RUN \
    # TIMEZONE
       apt-get install -y \
          tzdata \
    && kibana-plugin install x-pack \
    \
    && bin/kibana-plugin install --batch x-pack \
    && echo "### x-pack functions" >> /etc/kibana/kibana.yml \
    && echo "xpack.graph.enabled: false" >> /etc/kibana/kibana.yml \
    && echo "xpack.ml.enabled: false" >> /etc/kibana/kibana.yml \
    && echo "xpack.monitoring.enabled: true" >> /etc/kibana/kibana.yml \
    && echo "xpack.reporting.enabled: false" >> /etc/kibana/kibana.yml \
    && echo "xpack.security.enabled: false" >> /etc/kibana/kibana.yml

# X-PACK installed `NODE_OPTIONS`
ENV NODE_OPTIONS="--max-old-space-size=256"
