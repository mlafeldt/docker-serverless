FROM node:9-alpine

MAINTAINER Mathias Lafeldt <mathias.lafeldt@gmail.com>

RUN npm install -g \
    serverless \
    serverless-domain-manager

ENTRYPOINT ["serverless"]
