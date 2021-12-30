IMAGE_NAME:=debian-bazelisk
IMAGE_TAG:=$$(git log -1 --pretty=%h)

build:
	docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .

publish:
	docker tag ${IMAGE_NAME}:${IMAGE_TAG} nickdecooman/${IMAGE_NAME}:${IMAGE_TAG}
	docker push nickdecooman/${IMAGE_NAME}:${IMAGE_TAG}
