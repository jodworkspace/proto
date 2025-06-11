FROM golang:1.24.0-bookworm
ENV GO111MODULE=on
WORKDIR /buf
COPY Makefile ./
RUN make install-buf-build