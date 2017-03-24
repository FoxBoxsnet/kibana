FROM kibana:latest

MAINTAINER Tokyo Home SOC <github@homesoc.tokyo>

# install x-Pack
RUN kibana-plugin install x-pack


ENV NODE_OPTIONS="--max-old-space-size=256"