[![Docker Image CI](https://github.com/florivdg/puppeteer-node-alpine-docker/actions/workflows/docker-image.yml/badge.svg)](https://github.com/florivdg/puppeteer-node-alpine-docker/actions/workflows/docker-image.yml)

# Puppeteer Node LTS Alpine Docker Image

Use Puppeteer inside a Docker container with Node LTS alpine as a base image.

## Docker

### Build

```sh
docker build --pull -t florivdg/puppeteer-node-alpine-docker:latest .
```

### Run

```sh
docker run --rm --name puppeteer-sample -d florivdg/puppeteer-node-alpine-docker
```
