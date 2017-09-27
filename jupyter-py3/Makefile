
HUB_USER=centosd
IMAGE_NAME=$(shell basename $(CURDIR))

all: kill build run

build:
	docker build --no-cache -t $(HUB_USER)/$(IMAGE_NAME) .
	docker image prune -f

run: kill
	docker run -d -it --name=my-$(IMAGE_NAME) -e PASSWORD="" -p 8080:8080 $(HUB_USER)/$(IMAGE_NAME)

run2: kill
	docker run -d -it --name=my-$(IMAGE_NAME) -p 8080:8080 $(HUB_USER)/$(IMAGE_NAME)
	docker logs -f my-$(IMAGE_NAME)

kill:
	docker rm -fv my-$(IMAGE_NAME) || /bin/true
