.PHONY: build clean deploy

build:
	env GOOS=linux go build -o bin/main

clean:
	rm -rf ./bin

deploy: clean build
	sls deploy --verbose

invoke:
	sls invoke -f hello

destroy: 
	sls remove
