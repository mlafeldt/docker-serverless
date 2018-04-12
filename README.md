# docker-serverless

[![](https://images.microbadger.com/badges/image/mlafeldt/serverless.svg)](https://microbadger.com/images/mlafeldt/serverless)
[![](https://quay.io/repository/mlafeldt/serverless/status)](https://quay.io/repository/mlafeldt/serverless)
[![](https://img.shields.io/docker/pulls/mlafeldt/serverless.svg?maxAge=604800)](https://hub.docker.com/r/mlafeldt/serverless/)

A Docker image for [Serverless](https://serverless.com/framework/) development & deployment.

Features:

* `serverless` command-line tool
* `serverless-domain-manager` plugin for creating custom domain names
* `aws` command-line tool for scripting/debugging
* `make` for build automation
* `tini` init system to make the `serverless` tool work well in Docker
* Automatically assume the IAM role specified by the `AWS_ROLE` environment variable

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
    -e AWS_DEFAULT_REGION="$AWS_DEFAULT_REGION" \
    mlafeldt/serverless <command>
```

## Author

This project is being developed by [Mathias Lafeldt](https://twitter.com/mlafeldt).
