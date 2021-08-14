BASE_IMAGE_NAME := upamune/mkdocs-material-plantuml:latest
IMAGE_NAME := upamune/mkdocs-material-plantuml-example:latest

pwd := $(shell pwd)

.PHONY: docs/serve
docs/serve:
	@docker run --rm -p 8000:8000 -v $(pwd):/docs $(BASE_IMAGE_NAME)

.PHONY: docs/build
docs/build:
	@docker run --rm -v $(pwd):/docs $(BASE_IMAGE_NAME) build

.PHONY: docs/lint
docs/lint:
	@docker run --rm -v $(pwd):/tmp node:lts-alpine npx markdownlint-cli --config /tmp/.markdownlint.yaml '/tmp/docs/**/*.md'

.PHONY: image/build
image/build:
	@docker build -t $(IMAGE_NAME) .

.PHONY: image/run
image/run: image/build
	@docker run --rm -p 8080:8080 $(IMAGE_NAME)

.PHONY: image/lint
image/lint:
	@hadolint ./Dockerfile
