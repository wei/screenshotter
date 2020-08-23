FROM node:12-alpine AS build-env

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build && npm prune --production


FROM gcr.io/distroless/nodejs:12

WORKDIR /app

COPY --from=build-env /app /app

EXPOSE 3000
CMD ["./node_modules/micro/bin/micro.js", "api/dist/index.js"]

ENV \
  # Required, see docker-compose.yml
  BROWSER_WS_ENDPOINT= \
  # Optional
  WAIT_UNTIL=networkidle2 \
  _=

LABEL \
  org.label-schema.schema-version="1.0" \
  org.label-schema.name="screenshotter" \
  org.label-schema.url="https://github.com/wei/screenshotter" \
  org.label-schema.vcs-url="https://github.com/wei/screenshotter" \
  maintainer="Wei He <github@weispot.com>" \
