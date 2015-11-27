.PHONY: build run clean

build:
	docker build -t heka-build .

run:
	docker run --rm -v $(PWD)/build:/out heka-build

clean:
	rm -rf build
