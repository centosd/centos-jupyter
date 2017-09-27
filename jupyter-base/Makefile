
HUB_USER=centosd
IMAGE_NAME=$(shell basename $(CURDIR))

all: build clean

build:
	docker build --no-cache -t $(HUB_USER)/$(IMAGE_NAME) .

clean:
	docker image prune -f
