.PHONY: build clean

build: client/src/heka-linux-amd64.tar.gz
	make -C client build

client/src/heka-linux-amd64.tar.gz: heka/build/heka-linux-amd64.tar.gz
	mkdir -p client/src
	cp heka/build/heka-linux-amd64.tar.gz client/src/

heka/build/heka-linux-amd64.tar.gz:
	make -C heka build run

clean:
	make -C heka clean
	rm -f client/src/heka-linux-amd64.tar.gz
