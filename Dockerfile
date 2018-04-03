FROM node:9-alpine

MAINTAINER Mathias Lafeldt <mathias.lafeldt@gmail.com>

RUN apk update \
    && apk upgrade \
    && apk add bash py-pip \
    && pip install awscli \
    && npm install -g serverless serverless-domain-manager \
    && rm -rf /var/cache/apk/*

WORKDIR /service

ENTRYPOINT ["serverless"]
