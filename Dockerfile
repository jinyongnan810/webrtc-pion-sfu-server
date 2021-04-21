FROM golang:alpine

RUN apk add git

RUN mkdir -p $GOPATH/src/github.com/pion && cd $GOPATH/src/github.com/pion && git clone https://github.com/pion/example-webrtc-applications.git
EXPOSE 8080
WORKDIR /go/src/github.com/pion/example-webrtc-applications/sfu-ws
RUN go get github.com/gorilla/websocket && go get github.com/pion/rtcp && go get github.com/pion/webrtc/v3