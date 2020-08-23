FROM alpine:latest

EXPOSE 8080
RUN apk add --update curl
RUN apk add --update jq
RUN apk add --update go git && \
  mkdir -p /tmp/gotty && \
  GOPATH=/tmp/gotty go get github.com/yudai/gotty && \
  mv /tmp/gotty/bin/gotty /usr/local/bin/ && \
  apk del go git && \
  rm -rf /tmp/gotty /var/cache/apk/*
