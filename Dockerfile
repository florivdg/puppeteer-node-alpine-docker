FROM node:lts-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json ./
COPY package-lock.json ./

RUN npm install --only=production

# Installs latest Chromium package.
RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ca-certificates \
      ttf-freefont

# Tell Puppeteer to skip installing Chrome. We'll be using the installed package.
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# Bundle app source
COPY . .

CMD [ "npm", "start" ]
