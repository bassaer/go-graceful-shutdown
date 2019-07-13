.PHONY: build lint test clean

all: clean build lint test

build:
	go build ./cmd/...

lint:
	golint ./...

test:
	go test -v -cover -race ./...

clean:
	rm -f ./server
