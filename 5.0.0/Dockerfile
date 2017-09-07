FROM kibana:5.5.2

MAINTAINER HomeSOC <github@homesoc.tokyo>

ENV \
       TZ='Asia/Tokyo' \
    && XPACK_GRAPH_ENABLED='false' \
    && XPACK_ML_ENABLED='false' \
    && XPACK_MONITORING_ENABLED='true' \
    && XPACK_REPORTING_ENABLED='false' \
    && XPACK_SECURITY_ENABLED='false' \
    && XPACK_WATCHER_ENABLED='false'

USER kibana
RUN kibana-plugin install x-pack

USER root
RUN \
    # TIMEZONE
       apt update -y \
    && apt upgrade -y \
    && apt-get install -y \
          tzdata \
    \
    # Clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# X-PACK installed `NODE_OPTIONS`
ENV NODE_OPTIONS="--max-old-space-size=256"
