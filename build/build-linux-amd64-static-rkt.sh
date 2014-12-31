docker run -e "GOPATH=/usr/src/asink/vendor" -e CGO_ENABLED=0 -e GOOS=linux -e GOARCH=amd64 --rm -v "$(pwd)":/usr/src/asink -w /usr/src/asink golang:1.4-cross go build -o rkt/rootfs/bin/asink -ldflags '-linkmode external -extldflags "-static"' .