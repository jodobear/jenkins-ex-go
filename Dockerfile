FROM golang:alpine

WORKDIR /usr/app

COPY https://github.com/jodobear/jenkins-ex-go/suites/682903871/artifacts/6326778 /usr/app
# ADD go-artifact .

# RUN go get -u -v -f all
# RUN GOOS=linux CGO_ENABLED=0 go build -o go-artifact
RUN chmod 777 ./go-artifact

ENTRYPOINT ./go-artifact
