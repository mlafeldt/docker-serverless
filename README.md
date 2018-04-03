# docker-serverless

[![](https://images.microbadger.com/badges/image/mlafeldt/serverless.svg)](https://microbadger.com/images/mlafeldt/serverless)
[![](https://quay.io/repository/mlafeldt/serverless/status)](https://quay.io/repository/mlafeldt/serverless)
[![](https://img.shields.io/docker/pulls/mlafeldt/serverless.svg?maxAge=604800)](https://hub.docker.com/r/mlafeldt/serverless/)

Dockerized [Serverless CLI](https://serverless.com/framework/docs/providers/aws/cli-reference/)

## Usage

Run this inside your Serverless service:

```bash
docker run -it --rm -v "$PWD:/service" \
    -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" \
    -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" \
    -e "AWS_REGION=$AWS_REGION" \
    -e "AWS_DEFAULT_REGION=$AWS_REGION" \
    mlafeldt/serverless <command>
```

## Author

This project is being developed by [Mathias Lafeldt](https://twitter.com/mlafeldt).
