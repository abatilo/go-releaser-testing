FROM golang:1.15-alpine
ENV GOFLAGS=-mod=vendor
ARG TOKEN

WORKDIR /app
COPY . .
