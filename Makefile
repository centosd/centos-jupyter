
HUB_USER=centosd

all: clean build

build: 
	cd jupyter-base && make build
	cd jupyter-py3 && make build
	cd jupyter-scipy && make build

clean:
	docker rm -fv my-jupyter-base || /bin/true
	docker rm -fv my-jupyter-py3 || /bin/true
	docker rm -fv my-jupyter-scipy || /bin/true
	docker rmi $(HUB_USER)/jupyter-scipy || /bin/true
	docker rmi $(HUB_USER)/jupyter-py3 || /bin/true
	docker rmi $(HUB_USER)/jupyter-base || /bin/true
	docker image prune -f
