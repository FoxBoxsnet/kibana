FROM docker.elastic.co/kibana/kibana:5.5.2

MAINTAINER HomeSOC <github@homesoc.tokyo>

ENV TZ='Asia/Tokyo'

USER root
# install x-Pack
RUN \
       echo "### x-pack functions" >> /user/share/kibana/kibana.yml \
    && echo "xpack.graph.enabled: false" >> /user/share/kibana/kibana.yml \
    && echo "xpack.ml.enabled: false" >> /user/share/kibana/kibana.yml \
    && echo "xpack.monitoring.enabled: true" >> /user/share/kibana/kibana.yml \
    && echo "xpack.reporting.enabled: false" >> /user/share/kibana/kibana.yml \
    && echo "xpack.security.enabled: false" >> /user/share/kibana/kibana.yml

USER kibana

# X-PACK installed `NODE_OPTIONS`
ENV NODE_OPTIONS="--max-old-space-size=256"
