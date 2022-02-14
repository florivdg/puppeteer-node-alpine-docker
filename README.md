# Sample Puppeteer Node Docker (TMT)

Use Puppeteer inside a Docker container with Node LTS alpine as a base image.

## Docker

### Build

```sh
docker build --pull -t tmtde/puppeteer-node-docker:latest .
```

### Run

```sh
docker run --rm --name puppeteer-node-docker-sample -d tmtde/puppeteer-node-docker
```
