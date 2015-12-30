#!/bin/sh
exec mvn -Prelease clean release:clean release:prepare release:perform
