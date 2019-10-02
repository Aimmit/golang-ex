FROM golang:1.12

USER nobody
ENV XDG_CACHE_HOME /tmp/.cache

RUN mkdir -p /go/src/github.com/openshift/golang-ex
WORKDIR /go/src/github.com/openshift/golang-ex

COPY . /go/src/github.com/openshift/golang-ex
RUN go build

CMD ["./golang-ex"]
