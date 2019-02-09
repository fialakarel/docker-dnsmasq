IMAGE_NAME="fialakarel/dnsmasq"

build:
	docker build -t $(IMAGE_NAME) .

build-nc:
	docker build --no-cache --pull -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)

testrun:
	docker run --rm -it --publish 53:53/udp --publish 53:53/tcp --name dnsmasq-test $(IMAGE_NAME)
