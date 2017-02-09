FROM golang:1.8

RUN apt-get update
RUN apt-get install lbzip2
RUN go get -d -u -v github.com/ry/v8worker
WORKDIR /
RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
ENV PATH /depot_tools:$PATH
WORKDIR /go/src/github.com/ry/v8worker
RUN make
