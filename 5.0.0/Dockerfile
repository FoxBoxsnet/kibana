FROM kibana:5.5.2

MAINTAINER HomeSOC <github@homesoc.tokyo>

ENV TZ='Asia/Tokyo'
ENV XPACK_GRAPH_ENABLED='false'
ENV XPACK_ML_ENABLED='false'
ENV XPACK_MONITORING_ENABLED='true'
ENV XPACK_REPORTING_ENABLED='false'
ENV XPACK_SECURITY_ENABLED='false'
ENV XPACK_WATCHER_ENABLED='false'

USER kibana
RUN kibana-plugin install x-pack

USER root

# X-PACK installed `NODE_OPTIONS`
ENV NODE_OPTIONS="--max-old-space-size=256"
