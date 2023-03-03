# The BasePOM project - "_All the BasePOMs in the world_"

The BasePOM project aims to make using Apache Maven as a build tool painless. It provides a set of well known plugins for Apache Maven with an opinionated base configuration and a number of configuration options. It is aiming at Java projects but can easily be extended for other languages that are supported by Apache Maven.

It provides base configurations for unified, organization-wide build setups and supports simple project setups and complex Multi Module project use cases.

BasePOM and its private predecessors have been in use in many companies and open-source projects since 2010.

Core features of BasePOM:

**Opinionated configuration**. BasePOM Parent POMs configure Maven Plugins with reasonable defaults

**Property based customization**. BasePOM Parent POMs expose a number of properties that can be customized in Child POMs or from the command line

**Profile activation**. BasePOM Parent POMs contain a number of profiles that activate under specific conditions and customize build steps or activate specific plugins

**Policy modifications**. Any aspect of a BasePOM Parent POM can be customized through Policy POMs

[Full documentation and user guide](https://basepom.org/)

----

## Building, deployment and releasing


## Building and deployment

```bash
# install BasePOMs locally
% make install

# deploy BasePOMs to remote (snapshot) repository
% make deploy
```

## Create and deploy documentation

```bash
# create local docs in docs/target/site
% make docs

# deploy documentation to the basepom.org site
% make deploy-docs
```

## Create a release

```bash
# create a release to OSS
% make release
```

----

The BasePOM code is licensed under the Apache Software License v2 (ASLv2)

(C) 2013-2022 Henning Schmiedehausen

----

[![ci](https://github.com/basepom/basepom/actions/workflows/ci.yml/badge.svg)](https://github.com/basepom/basepom/actions/workflows/ci.yml)
[![Latest Release](https://maven-badges.herokuapp.com/maven-central/org.basepom/basepom-foundation/badge.svg)](http://search.maven.org/#search%7Cgav%7C1%7Cg%3A%22org.basepom%22%20AND%20a%3A%22basepom-foundation%22)
