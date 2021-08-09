IMAGE_NAME := upamune/mkdocs-material-plantuml:latest
pwd := $(shell pwd)

.PHONY: serve
serve:
	@docker run --rm -p 8000:8000 -v $(pwd):/docs $(IMAGE_NAME)

.PHONY: build
build:
	@docker run --rm -v $(pwd):/docs $(IMAGE_NAME) build

