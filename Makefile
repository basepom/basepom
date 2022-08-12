SHELL = /bin/sh
.SUFFIXES:
.PHONY: install deploy docs release deploy-docs

default: install

install:
	mvn clean install

deploy:
	mvn clean deploy

docs:
	mvn -Pdocs clean install

deploy-docs:
	mvn -Pdocs clean deploy

release:
	mvn -Prelease clean release:clean release:prepare release:perform
