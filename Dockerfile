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

ARG VCS_REF
ARG BUILD_DATE

LABEL \
  org.opencontainers.image.title="screenshotter" \
  org.opencontainers.image.description="Screenshot as a Service" \
  org.opencontainers.image.url="https://github.com/wei/screenshotter" \
  org.opencontainers.image.documentation="https://github.com/wei/screenshotter#readme" \
  org.opencontainers.image.source="https://github.com/wei/screenshotter" \
  org.opencontainers.image.licenses="MIT" \
	org.opencontainers.image.ref.name=$VCS_REF \
  org.opencontainers.image.created=$BUILD_DATE \
  org.opencontainers.image.authors="Wei He <docker@weispot.com>" \
  maintainer="Wei He <docker@weispot.com>"
