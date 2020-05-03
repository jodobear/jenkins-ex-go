FROM golang:1.14.2-buster

WORKDIR /usr/app

COPY ./main.go /usr/app

RUN go build -o go-artifact
RUN chmod 777 ./go-artifact

ENTRYPOINT ./go-artifact