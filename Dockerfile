FROM golang:1.15-alpine
ARG TOKEN

RUN apk add --no-cache git=2.26.2-r0
RUN [ -z ${TOKEN} ] || git config --global url."https://x-access-token:${TOKEN}@github.com/abatilo".insteadOf "https://github.com/abatilo"

WORKDIR /app
COPY . .
RUN go run main.go
