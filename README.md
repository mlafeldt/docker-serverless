# docker-serverless

[![](https://images.microbadger.com/badges/image/mlafeldt/serverless.svg)](https://microbadger.com/images/mlafeldt/serverless)
[![](https://quay.io/repository/mlafeldt/serverless/status)](https://quay.io/repository/mlafeldt/serverless)
[![](https://img.shields.io/docker/pulls/mlafeldt/serverless.svg?maxAge=604800)](https://hub.docker.com/r/mlafeldt/serverless/)

Dockerized Serverless CLI.

Includes:

* `serverless` command-line tool
* `serverless-domain-manager` plugin for creating custom domain names
* `tini` init system to make the `serverless` tool work well in Docker

## Usage

Pull the latest Docker image:

```bash
docker pull mlafeldt/serverless
```

Run this inside the directory of your Serverless service:

```bash
docker run -it --rm -v "$PWD:/service" \
    -e AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
    -e AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
    -e AWS_REGION="$AWS_REGION" \
    mlafeldt/serverless <command>
```

## Author

This project is being developed by [Mathias Lafeldt](https://twitter.com/mlafeldt).
