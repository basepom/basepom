# Base POMs - JDK 1.8 Edition

**THIS is the JDK 1.8 version of the basepom project.**

If you are stuck on JDK8 as the **build JDK** (not the execution JDK), use this version. Support for newer JDKs is incomplete (especially the `<release>` option of modern compilers is not supported, which makes cross-compilation really hard. Also, JDK 8 must be referred as `1.8` all the time which is inconsistent to the newer Java versions.

You are **strongly** encouraged to upgrade to a newer JDK for building and use the [main version](https://github.com/basepom/basepom/tree/master) of the basepom project, especially if you target JDK8+ compatibility and not just 1.8.


# Base POMs

## Building and deployment

    % mvn clean install

    % mvn clean deploy

## Releasing

Run the release script:

% ./do-release.sh


----

[![ci](https://github.com/basepom/basepom/workflows/ci8/badge.svg)](https://github.com/basepom/basepom/actions?query=workflow%3Aci8)[![Latest Release](https://maven-badges.herokuapp.com/maven-central/org.basepom/build-basepom8-root/badge.svg)](http://search.maven.org/#search%7Cgav%7C1%7Cg%3A%22org.basepom%22%20AND%20a%3A%22build-basepom8-root%22)
