.PHONY: build run

build:
	docker build -t heka-build -f heka-build.Dockerfile .

run:
	docker run --rm -v $(PWD)/build:/out heka-build
