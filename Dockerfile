FROM node:9-alpine

MAINTAINER Mathias Lafeldt <mathias.lafeldt@gmail.com>

RUN apk update \
    && apk upgrade \
    && apk add bash tini \
    && npm install -g serverless serverless-domain-manager \
    && rm -rf /var/cache/apk/*

ENV NODE_PATH /usr/local/lib/node_modules

WORKDIR /service

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/serverless"]
