FROM node:9-alpine

MAINTAINER Mathias Lafeldt <mathias.lafeldt@gmail.com>

ENV REFRESHED_AT 2018-05-08

RUN apk update \
    && apk upgrade \
    && apk add \
        bash \
        ca-certificates \
        curl \
        jq \
        make \
        py-pip \
        tini \
    && pip install awscli \
    && npm install -g \
        serverless \
        serverless-domain-manager \
    && rm -rf /var/cache/apk/*

ENV NODE_PATH /usr/local/lib/node_modules

WORKDIR /service

COPY assume-role /usr/local/bin/
ENTRYPOINT ["/sbin/tini", "--", "assume-role", "serverless"]
