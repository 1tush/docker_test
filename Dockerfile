FROM golang:1.4
ADD app /go/src/app
ENV GOPATH=/go
WORKDIR /go/src/app

RUN go get
EXPOSE 8000
ENTRYPOINT go run main.go
