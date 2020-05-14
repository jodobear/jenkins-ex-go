FROM golang:alpine

WORKDIR /usr/app

COPY ./main.go /usr/app

RUN go get github.com/jodobear/jenkins-ex-go
RUN GOOS=linux CGO_ENABLED=0 go build -o go-artifact
RUN chmod 777 ./go-artifact

ENTRYPOINT ./go-artifact
