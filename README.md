# Base POMs - JDK11+ Edition

**THIS is the JDK11+ version of the basepom project.**

If you are stuck on JDK8 as the **build JDK** (not the execution JDK), please check out the [basepom8 branch](https://github.com/basepom/basepom/tree/basepom8).

## Building and deployment

    % mvn clean install

    % mvn clean deploy

## Releasing

Run the release script:

% ./do-release.sh


----

[![ci](https://github.com/basepom/basepom/workflows/ci/badge.svg)](https://github.com/basepom/basepom/actions?query=workflow%3Aci)[![Latest Release](https://maven-badges.herokuapp.com/maven-central/org.basepom/build-basepom-root/badge.svg)](http://search.maven.org/#search%7Cgav%7C1%7Cg%3A%22org.basepom%22%20AND%20a%3A%22build-basepom-root%22)
