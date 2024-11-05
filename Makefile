#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

SHELL = /bin/sh
.SUFFIXES:

MAVEN = ./mvnw

export MAVEN_OPTS MAVEN_ARGS

default:: help

Makefile:: ;

clean::
	${MAVEN} clean

install::
	${MAVEN} clean install

deploy::
	${MAVEN} clean deploy

docs:: MAVEN_ARGS += -Pdocs
docs:: install

deploy-site:: MAVEN_ARGS += -Pdocs
deploy-site:: deploy

release:: MAVEN_ARGS += -Prelease
release::
	${MAVEN} clean release:clean release:prepare release:perform

release-site:: MAVEN_ARGS += -pl :build-basepom-docs -Prelease
release-site:: deploy-site

help::
	@echo " * clean           - clean local build tree"
	@echo " * install         - installs basepom versions in the local maven repository"
	@echo " * deploy          - installs basepom versions in the snapshot OSS repository"
	@echo " * docs            - build a local copy of the documentation"
	@echo " * deploy-site     - builds and deploys the documentation for build and release"
	@echo " * release         - release a new version to maven central"
	@echo " * release-site    - run from release directory to deploy the documentation site for a release"
