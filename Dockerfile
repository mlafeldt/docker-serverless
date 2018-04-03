FROM node:carbon

MAINTAINER Mathias Lafeldt <mathias.lafeldt@gmail.com>

RUN npm install -g \
    serverless \
    serverless-domain-manager

ENTRYPOINT ["serverless"]
