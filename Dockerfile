FROM golang:alpine

WORKDIR /usr/app

COPY ./go-artifact /usr/app

# RUN go build -o go-artifact
# RUN chmod 777 ./go-artifact

ENTRYPOINT ./go-artifact
