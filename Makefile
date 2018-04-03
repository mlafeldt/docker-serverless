IMAGE = mlafeldt/serverless

build:
	docker build --force-rm -t $(IMAGE) .

rebuild:
	docker build --pull --no-cache --force-rm -t $(IMAGE) .

shell: build
	docker run -it --rm --entrypoint /bin/bash \
		-e AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID) \
		-e AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY) \
		-e AWS_REGION=$(AWS_REGION) \
		-e AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) \
		$(IMAGE)
