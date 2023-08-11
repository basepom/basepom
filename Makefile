SHELL = /bin/sh
.SUFFIXES:
.PHONY: clean install deploy docs deploy-docs release help

MAVEN = ./mvnw

default: help

clean:
	${MAVEN} clean

install:
	${MAVEN} clean install

deploy:
	${MAVEN} clean deploy

docs:
	${MAVEN} -Pdocs clean install

deploy-docs:
	${MAVEN} -Pdocs clean deploy

release:
	${MAVEN} -Prelease clean release:clean release:prepare release:perform

help:
	@echo " * clean       - clean local build tree"
	@echo " * install     - installs basepom versions in the local maven repository"
	@echo " * deploy      - installs basepom versions in the snapshot OSS repository"
	@echo " * docs        - build a local copy of the documentation"
	@echo " * deploy-docs - builds and deploys the documentation"
	@echo " * release     - release a new version to maven central"
