deps:
	go get ./...

swasm: deps
	GOARCH=wasm GOOS=js go build -ldflags="-s -w" -o example-stripped.wasm markdown.go

wasm: deps
	GOARCH=wasm GOOS=js go build -o example.wasm markdown.go

