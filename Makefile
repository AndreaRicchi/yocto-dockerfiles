.PHONY: ubuntu20.04

ubuntu20.04:
	cd dockerfiles/ubuntu-20.04 && \
	docker build --build-arg UID=$(shell id -u) --build-arg GID=$(shell id -g) -t yocto-ubuntu20.04 .

ubuntu22.04:
	cd dockerfiles/ubuntu-22.04 && \
	docker build --build-arg UID=$(shell id -u) --build-arg GID=$(shell id -g) -t yocto-ubuntu22.04 .