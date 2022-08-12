SHELL = /bin/sh
.SUFFIXES:
.PHONY: install deploy docs release

default: install

install:
	mvn clean install

deploy:
	mvn clean deploy

docs:
	mvn -Pdocs clean install

release:
	mvn -Prelease clean release:clean release:prepare release:perform
