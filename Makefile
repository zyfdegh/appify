GO_VENDOR := $(shell which govendor)

test:
	go build -o testdata/app testdata/app.go
	go build -o appify
	go test
	rm appify
	rm testdata/app

install-govendor:
	if [ "$(GO_VENDOR)" == "" ] ; then go get github.com/kardianos/govendor ; fi

deps:
	govendor sync
