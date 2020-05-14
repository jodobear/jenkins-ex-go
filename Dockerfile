FROM golang:alpine

WORKDIR /usr/app

# COPY ./go-artifact /usr/app
# ADD go-artifact .

# RUN go get -u -v -f all
# RUN GOOS=linux CGO_ENABLED=0 go build -o go-artifact
RUN chmod 777 ./go-artifact

ENTRYPOINT ./go-artifact
