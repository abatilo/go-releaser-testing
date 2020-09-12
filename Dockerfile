FROM golang:1.15
ARG TOKEN

RUN echo ${TOKEN}
RUN git config --global url."https://x-access-token:${TOKEN}@github.com/abatilo".insteadOf "https://github.com/abatilo"

WORKDIR /app
COPY . .
RUN go run main.go
