[![Docker Image CI](https://github.com/florivdg/puppeteer-node-alpine-docker/actions/workflows/docker-image.yml/badge.svg)](https://github.com/florivdg/puppeteer-node-alpine-docker/actions/workflows/docker-image.yml) ![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/florivdg/puppeteer-node-alpine-docker?label=Docker%20Image%20Size&sort=date)

# Puppeteer Node Current Alpine Docker Image

Use Puppeteer inside a Docker container with the current `node:alpine` base image.

## Docker

### Build

```sh
docker build --pull -t florivdg/puppeteer-node-alpine-docker:latest .
```

### Run

```sh
docker run --rm --name puppeteer-sample -d florivdg/puppeteer-node-alpine-docker
```
