SHELL = /bin/sh
.SUFFIXES:
.PHONY: install deploy docs release deploy-docs help

default: help

install:
	./mvnw clean install

deploy:
	./mvnw clean deploy

docs:
	./mvnw -Pdocs clean install

deploy-docs:
	./mvnw -Pdocs clean deploy

release:
	./mvnw -Prelease clean release:clean release:prepare release:perform

help:
	@echo " * install     - installs basepom versions in the local maven repository"
	@echo " * deploy      - installs basepom versions in the snapshot OSS repository"
	@echo " * docs        - build a local copy of the documentation"
	@echo " * deploy-docs - builds and deploys the documentation"
	@echo " * release     - release a new version to maven central"
