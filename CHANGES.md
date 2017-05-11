# Changes

## Version 23

* 2017-05-11 - (foundation) Add ManifestTransformer when activating executable profile, not
                            replace all transformers (fix from #32)
* 2017-05-11 - (minimal)    Do not add main class to Collecting transformer, the activated profile
                            will use the ManifestTransformer from the foundation pom

## Version 22

* 2017-03-20 - (foundation) Upgrade git-commit-id plugin to 2.2.2 (from 2.2.1)
* 2017-03-20 - (foundation) Upgrade jacoco plugin to 0.7.9 (from 0.7.8)
* 2017-03-20 - (foundation) Upgrade build-helper plugin to 3.0.0 (from 1.12)
* 2017-03-20 - (foundation) Upgrade shade plugin to 3.0.0 (from 2.4.3)
* 2017-03-20 - (foundation) Upgrade compiler plugin to 3.6.1 (from 3.6.0)
* 2016-12-15 - (foundation) Introduce `basepom.executable.name` to make the binary name configurable
* 2016-12-23 - (foundation) Move manifest transformer into basepom.executable profile to allow
                            shading without main class.
* 2016-12-23 - (foundation) Make javadoc generation part of the checkers:
                            * use `basepom.check.skip-javadoc` to skip generation,
                              derives from now obsolete `basepom.javadoc.skip`.
                            * use `basepom.check.fail-javadoc` to fail on error,
                              derives from `basepom.check.fail-basic`.

## Version 21

* 2016-12-13 - (foundation) Upgrade jacoco plugin to 0.7.8 (from 0.7.7.201606060606)
* 2015-12-13 - (foundation) Upgrade scala dependency to 2.11.8 (from 2.11.7)
* 2016-12-13 - (foundation) Add integration test support for Jacoco
* 2016-12-13 - (foundation) Add basepom.check.fail-coverage to skip failure for jacoco:check
* 2016-12-12 - (foundation) Upgrade resources plugin to 3.0.2 (from 3.0.1)

## Version 20

* 2016-11-22 - (foundation) Upgrade pmd to 5.5.2 (from 5.3.6), plugin now supports 5.5.x
* 2016-11-22 - (foundation) Upgrade checkstyle to 6.19 (from 6.16.1)
* 2016-11-22 - (foundation) Upgrade compiler plugin to 3.6.0 (from 3.5.1)
* 2016-11-22 - (foundation) Upgrade pmd plugin to 3.7 (from 3.6)
* 2016-11-22 - (foundation) Upgrade site plugin to 3.6 (from 3.5.1)
* 2016-11-22 - (foundation) Upgrade assembly plugin to 3.0.0 (from 2.6)
* 2016-11-22 - (foundation) Upgrade build-helper plugin to 1.12 (from 1.11)
* 2016-11-22 - (foundation) Upgrade dependency-versions-check plugin to 2.0.4 (from 2.0.2)
* 2015-11-22 - (foundation) Upgrade really-executable-jar plugin to 1.5.0 (from 1.4.1)
* 2016-11-22 - (minimal)    Upgrade basepom-policy to 5 (from 4)
* 2016-11-22 - (oss)        Upgrade license plugin to 3.0 (from 2.11)
* 2016-11-22 - (foundation) Introduce `basepom.test.memory` and `basepom.it.memory` to set
                            memory used for unit and integration tests (merged #28)
* 2016-11-22 - (oss)        Also exclude `.rst` and `.adoc` from license plugin (merged #26)
* 2016-11-22 - (foundation) Introduce `basepom.javadoc.skip` (default: true) to allow generation
                            of javadoc jars during regular build cycle (requested in #25)

## Version 19

* 2016-07-12 - (foundation) Upgrade jacoco plugin to 0.7.7.201606060606 (from 0.7.6.201602180812)
* 2016-07-12 - (foundation) Upgrade findbugs plugin to 3.0.4 (from 3.0.3)
* 2016-07-12 - (foundation) Upgrade build-helper plugin to 1.11 (from 1.10)
* 2016-07-12 - (foundation) Upgrade resources plugin to 3.0.1 (from 2.7)
* 2016-07-12 - (foundation) Upgrade jar plugin to  3.0.2 (from 2.6)
* 2016-07-12 - (foundation) Upgrade source plugin to 3.0.1 (from 3.0.0)
* 2016-07-12 - (foundation) Upgrade javadoc plugin to 2.10.4 (from 2.10.3)
* 2016-07-12 - (foundation) Upgrade scm plugin to 1.9.5 (from 1.9.4)
* 2016-07-12 - (foundation) Move all system variables for surefire and failsafe into minimal pom.
* 2016-07-12 - (foundation) Respect command line 'skipITs' setting for integration tests.
* 2016-05-02 - (foundation) Add Maven toolchains plugin at version 1.1.
* 2016-05-02 - (minimal)    Add basic policy to enforce build JDK for projects.


## Version 18

* 2016-04-29 - (foundation) Downgrade pmd to 5.3.6 (from 5.4.1). Maven plugin does not
                            yet support 5.4.x.
* 2016-04-29 - (foundation) Introduce `basepom.test.skip` to skip unit tests. This can
                            be used in a submodule to skip tests for that specific module.
* 2016-04-27 - (foundation) Introduce `basepom.build.maxheap-mb` as numeric equivalent
                            to `basepom.build.jvmsize`.
* 2016-04-27 - (foundation) Use `<maxHeap>` instead of `<jvmArgs>` for findbugs.

## Version 17

* 2016-04-25 - (foundation) Upgrade site plugin to 3.5.1 (from 3.5)
* 2016-04-25 - (foundation) Remove eclipse managed plugin section
* 2016-04-25 - (foundation) Add the dependency-management-plugin 0.7
                            active by default but not validating plugin
                            and dependency management. Set the
                            <basepom.dependency-management.dependencies>
                            and </basepom.dependency-management.plugins>
                            switches if needed.
* 2016-04-15 - (foundation) Add 'basepom.git-id.fail-no-info' switch
* 2016-04-15 - (foundation) Upgrade git-commit-id plugin to 2.2.1 (from 2.2.0)
* 2016-04-12 - (oss)     - rename the "minimal-oss" pom to just "oss".
* 2016-04-06 - (minimal) - add an exception for findbugs-annotations vs. jcip-annotations.
                           Findbugs managed to finally jump the shark by declaring
                           dependencies on jsr305 and jcip jars *AND* including the same
                           classes in the jar itself, therefore ensuring that the class
                           path will always contain duplicates.

## Version 16

* 2016-03-18 - (foundation) Upgrade jacoco plugin to 0.7.6.201602180812 (from 0.7.5.201505241946)
* 2016-03-18 - (foundation) Upgrade source plugin to 3.0.0 (from 2.4)
* 2016-03-18 - (foundation) Upgrade shade plugin to 2.4.3 (from 2.4.2)
* 2016-03-18 - (foundation) Upgrade site plugin to 3.5 (from 3.4)
* 2016-03-18 - (foundation) Upgrade surefire plugin to 2.19.1 (from 2.19)
* 2016-03-18 - (foundation) Upgrade failsafe plugin to 2.19.1 (from 2.19)
* 2016-03-18 - (foundation) Upgrade compiler plugin to 3.5.1 (from 3.3)
* 2015-03-18 - (foundation) Upgrade checkstyle to 6.16.1 (from 6.14.1)
* 2016-03-18 - Minimum Maven version now 3.3.3
* 2016-03-07 - Removed the standard and standard-oss POMs

## Version 15

* 2015-12-30 - (foundation) Upgrade build helper plugin to 1.10 (from 1.9.1)
* 2015-12-30 - (foundation) Upgrade pmd plugin to 3.6 (from 3.5)
* 2015-12-30 - (foundation) Upgrade checkstyle to 6.14.1 (from 6.12.1)
* 2015-12-30 - (foundation) Upgrade pmd to 5.4.1 (from 5.4.0)
* 2015-12-30 - (foundation) Upgrade findbugs dependency to 3.0.1 (from 3.0.0), the missing
                            jars have finally shown up...
* 2015-10-27 - (foundation) Make Checkstyle severity configurable, defaults to WARN (#19)


## Version 14

Maintaining a central set of dependencies for a wide variety of
projects using all different types of dependencies has turned out to
be a losing proposition. This should be done in an organization pom,
not in the base project. Therefore, with this release, the 'standard'
and 'standard-oss' poms are now **DEPRECATED**.

Starting with this release, the dependency versions in the 'standard'
pom are no longer updated.

Projects using either of those are highly encouraged to move the
dependency management section in the 'standard' pom to their own
project (and keep only the dependencies that are actually used) and
then switch to the 'minimal' or 'minimal-oss' pom.

Sometime in a future release, the 'standard' and 'standard-oss' poms
**WILL BE REMOVED WITHOUT REPLACEMENT**.

* 2015-11-15 - (foundation) Fix longstanding typo for report encoding (exposed by the
                            failsafe plugin).
* 2015-11-15 - (foundation) Add failsafe plugin configuration for integration tests.
* 2015-11-15 - (foundation) Rename basepom.it.folder to basepom.invoker.folder to make
                            room for adding the failsafe plugin for integration testing.
* 2015-11-15 - (foundation) Add coverage back to extended checks (jacoco fixed their bug).
* 2015-11-15 - (foundation) Change verbosity of the git-id plugin. Fixes #21.
* 2015-11-15 - (foundation) Upgrade pmd to 5.4.0 (from 5.3.4)
* 2015-11-15 - (foundation) Upgrade checkstyle to 6.12.1 (from 6.10.1)
* 2015-11-15 - (foundation) Upgrade clean plugin to 3.0.0 (from 2.6.1)
* 2015-11-15 - (foundation) Upgrade surefire plugin to 2.19 (from 2.18.1)
* 2015-11-15 - (foundation) Upgrade shade plugin to 2.4.2 (from 2.4.1)
* 2015-11-15 - (foundation) Upgrade checkstyle plugin to 2.17 (from 2.16)
* 2015-11-15 - (foundation) Upgrade assembly plugin to 2.6 (from 2.5.5)
* 2015-11-15 - (foundation) Upgrade release plugin to 2.5.3 (from 2.5.2)
* 2015-11-15 - (foundation) Upgrade duplicate-finder plugin to 1.2.1 (from 1.2.0)
* 2015-11-15 - (foundation) Upgrade findbugs plugin to 3.0.3 (from 3.0.2)
* 2015-11-15 - (foundation) Upgrade git-commit-id plugin to 2.2.0 (from 2.1.15)
* 2015-11-15 - (foundation) Upgrade scala plugin to 3.2.2 (from 3.2.1)

## Version 13

* 2015-09-19 - (foundation) Add the modernizer-maven-plugin 1.4.0
                            Not activated by default.
* 2015-09-18 - (foundation) Remove -Werror from compiler options. It
                            was not possible to turn Werror off or
                            override it which is really inconvenient.
                            If your projects relied on Werror being
                            present, re-add it either to your cor-
                            porate POM or the project POM itself.
                            Waiting for https://github.com/codehaus-plexus/plexus-compiler/pull/14
                            to trickle through the maven ecosystem to
                            allow turning Werror on and off with a
                            flag.
* 2015-09-18 - (minimal) Remove JDK8 build profile for javadocs. This
                         clashes with toolchains use and will activate
                         erronously when building with a JDK8 driving
                         maven and JDK7 building the actual code.
* 2015-09-18 - (standard-oss) Remove JDK7 profile, no longer needed
                              with minimal maven == 3.3.1
* 2015-09-18 - (foundation) Upgrade scala plugin to 3.2.2 (from 3.2.1)
* 2015-09-18 - (foundation) Upgrade findbugs plugin to 3.0.2 (from 3.0.1)
* 2015-09-18 - (foundation) Upgrade duplicate-finder plugin to 1.2.0 (from 1.1.2)
* 2015-09-18 - (foundation) Upgrade enforcer plugin to 1.4.1 (from 1.3.1)
* 2015-09-18 - (foundation) Upgrade pmd plugin to 3.5 (from 3.4)
* 2015-09-18 - (foundation) Upgrade checkstyle plugin to 2.16 (from 2.15)
* 2015-09-18 - (foundation) Upgrade invoker plugin to 2.0.0 (from 1.10)
* 2015-09-18 - (foundation) Upgrade shade plugin to 2.4.1 (from 2.4)
* 2015-09-18 - (foundation) Upgrade scala dependency to 2.11.7  (from 2.11.6)
* 2015-09-18 - (foundation) Upgrade checkstyle to 6.10.1 (from 6.7)
* 2015-09-18 - (foundation) Upgrade pmd to 5.3.4 (from 5.3.2)
* 2015-09-18 - (foundation) Change minimal version of Maven to 3.3.1 (JDK 7)

## Version 12

* 2015-06-16 - (foundation) Upgrade duplicate-finder plugin to 1.1.2 (from 1.1.1)
* 2015-06-16 - (standard) Default Java target version is 1.8.
* 2015-06-16 - (standard) Upgrade commons-lang3 dependency to 3.4 (from 3.3.2)
* 2015-06-16 - (standard) Upgrade guice dependency to 4.0 (from 4.0-beta5)
* 2015-06-16 - (standard) Upgrade joda-time dependency to 2.8.1 (from 2.7)
* 2015-06-16 - (standard) Upgrade logback dependency to 1.1.3 (from 1.1.2)
* 2015-06-16 - (standard) Upgrade slf4j dependency to 1.7.12 (from 1.7.10)
* 2015-06-16 - (standard) Upgrade jackson dependency to 2.4.6 (from 2.4.5)
* 2015-06-16 - (standard) Upgrade jetty dependency to 9.2.11.v20150529 (from 9.2.9.v20150224)
* 2015-06-16 - (standard) Upgrade testng dependency to 6.9.4 (from 6.8.21)
* 2015-06-16 - (standard-oss) Upgrade license plugin to 2.11 (from 2.9)
* 2015-06-16 - (foundation) Upgrade checkstyle to 6.7 (from 6.2)
* 2015-06-16 - (foundation) Upgrade pmd to 5.3.2 (from 5.2.3)
* 2015-06-16 - (foundation) Upgrade findbugs dependency to 3.0.1 (from 3.0.0)
* 2015-06-16 - (foundation) Upgrade scala plugin to 3.2.1 (from 3.2.0)
* 2015-06-16 - (foundation) Upgrade shade plugin to 2.4 (from 2.3)
* 2015-06-16 - (foundation) Upgrade assembly plugin to 2.5.5 (from 2.5.3)
* 2015-06-16 - (foundation) Upgrade git-commit-id plugin to 2.1.15 (from 2.1.13)
* 2015-06-01 - Enforce maven 3.3.3 for basepom build itself and add a .mvn/maven.config file
* 2015-06-01 - Update various plugin URIs after Codehaus shutdown.
* 2015-06-01 - (foundation) Upgrade compiler plugin to 3.3 (from 3.2)
* 2015-06-01 - (foundation) Upgrade checkstyle plugin to 2.15 (from 2.14)
* 2015-06-01 - (foundation) Upgrade javadoc plugin to 2.10.3 (from 2.10.1)
* 2015-06-01 - (foundation) Upgrade invoker plugin to 1.10 (from 1.9)
* 2015-06-01 - (foundation) Upgrade release plugin to 2.5.2 (from 2.5.1)
* 2015-06-01 - (foundation) Upgrade scm plugin to 1.9.4 (from 1.9.2)
* 2015-06-01 - (foundation) Upgrade findbugs plugin to 3.0.1 (from 3.0.0)
* 2015-06-01 - (foundation) Upgrade jacoco  plugin to 0.7.5.201505241946 (from 0.7.4.201502262128)
* 2015-06-01 - (foundation) Upgrade git-commit-id plugin to 2.1.13 (from 2.1.12)
* 2015-06-01 - (foundation) Upgrade really-executable-jar plugin to 1.4.1 (from 1.4.0)

## Version 11

* 2015-03-09 - (foundation) Upgrade git-commit-id plugin to 2.1.13 (from 2.1.12)
* 2015-03-09 - (standard) Upgrade jersey dependency to 1.19  (from 1.18.3)
* 2015-03-09 - (standard) Upgrade jetty dependency to 9.2.9.v20150224 (from 9.2.7.v20150116)
* 2015-03-09 - (foundation) Upgrade scala dependency to 2.11.6  (from 2.11.5)
* 2015-03-09 - (foundation) Upgrade jar plugin to 2.6 (from 2.5)
* 2015-03-09 - (foundation) Upgrade jacoco plugin to 0.7.4.201502262128 (from 0.7.2.201409121644)
* 2015-03-09 - (standard-oss) Upgrade license plugin to 2.9 (from 2.8)
* 2015-03-09 - (standard) Add asm < 5.0.2 to banned dependency list (does not work on JDK8).
* 2015-03-09 - (standard) Remove cglib from the banned dependency list.
* 2015-03-09 - (standard) Turn off JDK8 javadoc linting. Fixes #3.
* 2015-03-09 - (foundation) Use standard transformers for foundation shade plugin. Fixes #15.
* 2015-02-08 - (foundation) Change git-id default configuration (https://github.com/ktoso/maven-git-commit-id-plugin/issues/156)
* 2015-02-08 - (standard-oss) Upgrade license plugin to 2.8 (from 2.7)
* 2015-02-08 - (standard-oss) Support YAML files for the license plugin

## Version 10

* 2015-02-08 - (standard) Upgrade jackson dependency to 2.4.5 (from 2.4.4)
* 2015-02-08 - (standard) Upgrade jetty dependency to 9.2.7.v20150116 (from 9.2.6.v20141205)
* 2015-02-08 - (standard) Upgrade testng dependency to 6.8.21 (from 6.8.17)
* 2015-02-08 - (foundation) Upgrade checkstyle plugin to 2.14 (from 2.13)
* 2015-02-08 - (foundation) Upgrade pmd plugin to 3.4 (from 3.3)
* 2015-02-08 - (foundation) Upgrade dependency plugin to 2.10 (from 2.9)
* 2015-02-08 - (foundation) Upgrade really-executable plugin to 1.4.0 (from 1.3.0)
* 2015-02-08 - (standard-oss) Upgrade gpg plugin to 1.6 (from 1.5)
* 2015-02-08 - (standard) Unban the jsr305 jars, add exclusion rules to
                          duplicate-finder and dependency plugin to allow
                          co-existence of the jsr305 and annotations jars.

## Version 9

* 2015-01-18 - (foundation) Upgrade duplicate-finder plugin to 1.1.1 (from 1.1.0)
* 2015-01-17 - (standard) Upgrade testng dependency to 6.8.17 (from 6.8.13)
* 2015-01-17 - (standard) Upgrade slf4j dependency to 1.7.10 (from 1.7.9)
* 2015-01-17 - (standard) Upgrade joda-time dependency to 2.7 (from 2.6)
* 2015-01-17 - (foundation) Upgrade scala dependency to 2.11.5 (from 2.11.4)
* 2015-01-17 - (foundation, standard) Move dep.basepom-policy.version to standard pom.
* 2015-01-17 - (standard) Upgrade to basepom-policy 4 to allow checkstyle exclusions for
* 2015-01-01 - (smoketest) Move the smoketest to integration testing.
* 2014-12-31 - (standard) Add a minimal formatter for jul.SimpleFormatter (suggested by @dain)

## Version 8

* 2014-09-22 - (standard) Add jackson-jaxrs-base and jackson-datatype-jsr310
* 2014-12-31 - (foundation) Upgrade clean plugin to 2.6.1 (from 2.5)
* 2014-12-31 - (foundation) Upgrade compiler plugin to 3.2 (from 3.1)
* 2014-12-31 - (foundation) Upgrade resources plugin to 2.7 (from 2.6)
* 2014-12-31 - (foundation) Upgrade surefire plugin to 2.18.1 (from 2.17)
* 2014-12-31 - (foundation) Upgrade source plugin to 2.4 (from 2.3)
* 2014-12-31 - (foundation) Upgrade checkstyle plugin to 2.13 (from 2.12.1)
* 2014-12-31 - (foundation) Upgrade javavdoc plugin to 2.10.1 (from 2.9.1)
* 2014-12-31 - (foundation) Upgrade pmd plugin to 3.3 (from 3.2)
* 2014-12-31 - (foundation) Upgrade assembly plugin to 2.5.3 (from 2.4.1)
* 2014-12-31 - (foundation) Upgrade dependency plugin to 2.9 (from 2.8)
* 2014-12-31 - (foundation) Upgrade release plugin to 2.5.1 (from 2.5)
* 2014-12-31 - (foundation) Upgrade scm plugin to 1.9.2 (from 1.9)
* 2014-12-31 - (foundation) Upgrade jacoco plugin to 0.7.2.201409121644 (from 0.7.1.201405082137)
* 2014-12-31 - (foundation) Upgrade git-commit-id plugin to 2.1.12 (from 2.1.10)
* 2014-12-31 - (standard-oss) Upgrade license plugin to 2.7 (from 2.6)

* 2014-12-31 - (foundation) Upgrade pmd to 5.2.3 (from 5.1.2)
* 2014-12-31 - (foundation) Upgrade checkstyle to 6.2 (from 5.7)
* 2014-12-31 - (foundation) Upgrade scala dependency to 2.11.4 (from 2.11.2)
* 2014-12-31 - (standard) Upgrade jackson dependency to 2.4.4 (from 2.4.2)
* 2014-12-31 - (standard) Upgrade guice dependency to 4.0beta5 (from 4.0beta4)
* 2014-12-31 - (standard) Upgrade jersey dependency to 1.18.3  (from 1.18.1)
* 2014-12-31 - (standard) Upgrade commons-codec dependency to 1.10 (from 1.9)
* 2014-12-31 - (standard) Upgrade joda-time dependency to 2.6 (from 2.4)
* 2014-12-31 - (standard) Upgrade junit dependency to 4.12 (from 4.11)
* 2014-12-31 - (standard) Upgrade jetty dependency to 9.2.6.v20141205 (from 9.2.3.v20140905)
* 2014-12-31 - (standard) Upgrade mockito-core dependency to 1.10.19 (from 1.9.5)
* 2014-12-31 - (standard) Upgrade slf4j dependency to 1.7.9 (from 1.7.7)
* 2014-12-31 - (standard) Upgrade testng dependency to 6.8.13 (from 6.8.8)

* 2014-12-31 - (foundation) Switched from Ning duplicate-finder plugin to the
                            basepom plugin.
                            This is a breaking change and if a POM references
                            the old ning plugin, artifactId and groupId must be
                            updated!
* 2014-12-31 - (foundation) Removed basepom.check.phase-duplicate-finder property, as the
                            duplicate finder plugin runs on the classpath, it must be run in
                            verify phase.
* 2014-12-31 - (standard) Added remaining jackson dependencies::
                          - datatype: hppc, hibernate3, hibernate4, jdk7, jdk8, json-org, jsr353
                          - dataformat: avro, cbor, csv, xml
                          - module: kotlin, parameter-names, paranamer, guice, jsonSchema, scala_2.10, scala_2.11
                          - jaxrs: cbor, smile, xml
* 2014-12-31 - (standard) Added remaining guice extension modules:
                          - grapher, jmx, jndi, persist, spring, struts2, testlib
* 2014-12-31 - (standard) Added more jersey dependencies:
                          - jersey: atom
                          - jersey-contribs: spring, simple-server, scala
                          - jersey-test-framework: http, external
* 2014-12-31 - (standard) Added more jetty dependencies:
                          - io, xml, webapp, jndi, annotations, continuation, client, monitor, http-spi

## Version 7

* 2014-09-14 - (foundation) Upgrade duplicate-finder plugin to 1.0.8 (from 1.0.7)
* 2014-09-14 - (standard) Upgrade jackson dependency to 2.4.2 (from 2.4.1),
                          remove special cases for jackson core, databind, dataformat-smile
* 2014-09-14 - (standard) Upgrade joda-time dependency to 2.4 (from 2.3)
* 2014-09-14 - (standard) Upgrade guava dependency to 18.0 (from 17.0)
* 2014-09-14 - (standard) Upgrade jetty dependency to 9.2.3.v20140905 (from 9.2.1.v20140609)
* 2014-09-14 - (foundation) Upgrade scala dependency to 2.11.2 (from 2.11.1)
* 2014-09-14 - (foundation) Add java.util.logging formatting to surefire plugin to support better
                            formatting for tests (from facebook-presto).
* 2014-09-12 - (foundation) Upgrade build helper plugin to 1.9.1 (from 1.9.0)
* 2014-09-12 - (foundation) Upgrade findbugs plugin to 3.0.0 (from 2.5.4)
* 2014-09-12 - (foundation) Upgrade scala plugin to 3.2.0 (from 3.1.6)
* 2014-09-12 - (foundation) Upgrade deploy plugin to 2.8.2 (from 2.8.1)
* 2014-09-12 - (foundation) Upgrade install plugin to 2.5.2 (from 2.5.1)
* 2014-09-12 - (foundation) Upgrade pmd plugin to 3.2 (from 3.1)
* 2014-09-12 - (foundation) Upgrade plugin to 2.4.1 (from 2.4)

## Version 6

* 2014-07-22 - (foundation) Add really-executable plugin with profile to shade and create executables
* 2014-07-22 - (foundation, standard, standard-oss) Add basic scala build and deploy support
* 2014-07-22 - (foundation) Add invoker (integration testing) support.
* 2014-07-22 - (foundation) Update shade plugin configuration.
* 2014-07-22 - (foundation) Add property-helper plugin for build.id generation.
* 2014-07-22 - (foundation) Add git-commit-id plugin.
* 2014-07-22 - (smoketest) Add very basic smoke test for jar conflicts.
* 2014-07-22 - (standard) Add commons-collections 4 as a dependency
* 2014-07-22 - (standard) REMOVE easymock (was not update to be JDK8 compatible)
* 2014-07-22 - (standard) REMOVE cglib-nodep (old version is not JDK8 compatible, new
                          version is not backwards compatible, prefer breaking during
                          build over silent breakage when running)
* 2014-07-22 - (standard) Upgrade jmxutils to 1.18 (from 1.16)
* 2014-07-22 - (standard) Upgrade servlet-api to 3.1.0 (from 3.0.1)
* 2014-07-22 - (standard) Upgrade jetty to 9.2.1.v20140609 (from 8.1.15.v20140411).
* 2014-07-22 - (standard) Upgrade commons-logging to 1.2 (from 1.1.3)
* 2014-07-22 - (standard) Upgrade jackson dependency to 2.4.1 (from 2.4.0)
* 2014-07-22 - (standard) Add temporary special cases for jackson core, databind, dataformat-smile
* 2014-07-22 - (foundation) Upgrade checkstyle to 5.7 (from 5.6)
* 2014-07-22 - (foundation) Upgrade PMD to 5.1.2 (from 5.1.0)
* 2014-07-22 - (foundation) Upgrade findbugs dependency to 3.0.0 (from 2.0.3)
* 2014-07-22 - (foundation) Upgrade findbugs plugin to 3.0.0 (from 2.5.3)
* 2014-07-22 - (foundation) Upgrade build helper plugin to 1.9 (from 1.8)
* 2014-07-22 - (foundation) Upgrade source plugin to 2.3 (from 2.2.1)
* 2014-07-22 - (foundation) Upgrade jar plugin to 2.5 (from 2.4)
* 2014-07-22 - (foundation) Upgrade site plugin to 3.4 (from 3.3)
* 2014-07-22 - (foundation) Remove workaround for MRELEASE-812 (fixed in release plugin 2.5)
* 2014-06-12 - (standard) Upgrade commons-beanutils dependency to 1.9.2 (from 1.9.1)
* 2014-06-12 - (standard) Upgrade jetty dependency to 8.1.15.v20140411 (from 8.1.14.v20131031)
* 2014-06-12 - (standard) Upgrade jmxutils dependency to 1.16 (from 1.14)
* 2014-06-12 - (standard) Upgrade commons-lang-3 dependency to 3.3.2 (from 3.2.1)
* 2014-06-12 - (standard) Upgrade guice dependency to 4.0-beta4 (from 4.0-beta)
* 2014-06-12 - (standard) Upgrade guava dependency to 17.0 (from 16.0.1)
* 2014-06-12 - (standard) Upgrade jackson dependency to 2.4.0 (from 2.3.2)
* 2014-06-12 - (standard) Upgrade slf4j dependency to 1.7.7 (from 1.7.6)
* 2014-06-12 - (standard) Upgrade logback dependency 1.1.2 to  (from 1.1.1)
* 2014-06-12 - (foundation) Upgrade release plugin to 2.5 (from 2.4.2)
* 2014-06-12 - (foundation) Upgrade checkstyle plugin to 2.12.1 (from 2.11)
* 2014-06-12 - (foundation) Upgrade surefire plugin to 2.17 (from 2.16)
* 2014-06-12 - (foundation) Upgrade shade plugin to 2.3 (from 2.2)
* 2014-05-17 - (foundation) Upgrade pmd plugin to 3.1 (from 3.0.1)
* 2014-05-17 - (foundation) Upgrade duplicate-finder plugin to 1.0.7 (from 1.0.6)
* 2014-05-17 - (foundation) Upgrade jacoco plugin to 0.7.1.201405082137 (from 0.6.4.201312101107)

## Version 5

* 2014-03-02 - Upgrade license plugin to 2.6 (from 2.5)
* 2014-03-02 - (foundation) Unhook code coverage from extended checks (fixes
                            no argLine property bug)
* 2014-03-02 - (foundation) Upgrade duplicate-finder plugin to 1.0.6 (from 1.0.5)
* 2014-03-02 - (foundation) Add workaround for MRELEASE-812
* 2014-03-02 - (standard-oss) Upgrade gpg plugin to 1.5 (from 1.4)
* 2014-03-02 - (standard) Upgrade jackson dependency to 2.3.2 (from 2.3.1)
* 2014-03-02 - (standard) Upgrade jersey dependency to 1.18.1 (from 1.18)
* 2014-03-02 - (standard) Upgrade TestNG dependency to 6.8.8 (from 6.8.7)
* 2014-03-02 - (standard) Add jackson-dataformat-yaml,
                          jackson-module-jaxb-annotations,
                          jackson-jaxrs-json-provider as managed dependencies.
* 2014-03-02 - (standard) Add jersey-test-framework-core and
                          jersey-test-framework-inmemory as managed dependencies.
* 2014-03-02 - (standard) Upgrade slf4j to 1.7.6 (from 1.7.5)
* 2014-03-02 - (standard) Upgrade logback to 1.1.1 (from 1.0.13)
* 2014-03-02 - (standard) Upgrade guava to 16.0.1 (from 15.0)
* 2014-03-02 - (foundation) Upgrade PMD to 5.1.0 (from 5.0.5)
* 2014-01-12 - (foundation) Make release tag name format configurable.

## Version 4

* 2014-01-12 - (foundation) Remove extensions for site build from foundation pom.
* 2014-01-12 - (standard-oss) Remove sonatype snapshot repo definition from pom.
* 2014-01-11 - (foundation) Upgrade scm plugin to 1.9 (from 1.8.1)
* 2014-01-11 - (standard) Upgrade commons-beanutils dependency to 1.9.1 (from 1.8.3)
* 2014-01-11 - (standard) Upgrade commons-codec dependency to 1.9 (from 1.8)
* 2014-01-11 - (standard) Upgrade commons-lang dependency to 3.2.1 (from 3.1)
* 2014-01-11 - (foundation) Upgrade findbugs to 2.0.3 (from 2.0.2), removed hardcoded plugin
* 2014-01-11 - (standard) Upgrade jackson dependency to 2.3.1 (from 2.3.0)
* 2014-01-11 - updated policy jar to version 2.
* 2014-01-11 - use license file in the policy jar, removing the need the basepom.main.basedir.

## Version 3

* 2013-12-20 - (foundation, standard) Add checkstyle checker to build.
* 2013-12-20 - (foundation, standard) Only activate pmd when it is actually configured.
* 2013-12-19 - (foundation) Use hardcoded version for findbugs jar until they figured out on
                            how to upload the 2.0.3 versions of annotations.
* 2013-12-19 - (foundation) Upgrade jacoco to 0.6.4.201312101107 (from 0.6.3.201306030806)
* 2013-12-17 - (foundation, standard-oss) Make plugin phase configurable
* 2013-12-17 - (foundation) Add phase for jacoco prepare-agent
* 2013-12-17 - (foundation) Fix long standing typo for dependency-versions-check
* 2013-12-16 - (standard-oss) Add switch to skip existing license headers.
* 2013-12-16 - (foundation) Rename basepom.check.skip-jacoco to basepom.check.skip-coverage.
* 2013-12-16 - (foundation) Upgrade duplicate-finder plugin to 1.0.5 (from 1.0.4)
* 2013-12-16 - (foundation) Upgrade release plugin to 2.4.2 (from 2.4.1)
* 2013-12-16 - (foundation) Upgrade install plugin to 2.5.1 (from 2.5)
* 2013-12-16 - (standard) Upgrade jersey dependency to 1.18 (from 1.17)
* 2013-12-16 - (standard) Surefire plugin must obey existing argLine.
* 2013-12-16 - use dep.plugin.<x>.version for all plugins to allow override in child poms.
* 2013-11-17 - (standard) Add jersey-servlet dependency.
* 2013-11-17 - (standard) Upgrade jackson dependency to 2.3.0 (from 2.2.3)
* 2013-11-17 - (standard) Upgrade jetty dependency to 8.1.14.v20131031 (from 8.1.13.v20130916)
* 2013-11-03 - (standard) Add commons-logging 1.1.3 as known dependency.
* 2013-11-03 - (foundation, standard) Change dep.findbugs-annotations.version
                                      to dep.findbugs.version
* 2013-11-03 - (foundation) Use explicit findbugs version in plugin, fixes
                            the annoying @Nullable annotation bug in Guava
                            function and predicate
* 2013-10-30 - (standard) Upgrade commons-configuration to 1.10 (from 1.7)
* 2013-10-30 - (standard) Outlaw commons-configuration 1.8 and 1.9
* 2013-10-30 - (foundation) Use newer surefire test configuration.
* 2013-10-27 - (foundation) Fail PMD only on prio 4 or higher.
* 2013-10-27 - (standard-oss) Ignore all files in src/license for license check.
* 2013-10-27 - (standard) Do not exclude any files by default from PMD.
* 2013-10-27 - (standard) enforce braces PMD ruleset.
* 2013-10-27 - (standard) drop cglib back down to 2.2.2 (from 3.0),
                          easymock requires 2.2.2
* 2013-10-27 - (standard) drop javax.servlet back down to 3.0.1 (from 3.1.0),
                          jetty8 requires 3.0.1
* 2013-10-27 - (standard) Upgrade objenesis dependency to 2.1 (from 1.4)
* 2013-10-27 - (standard) Upgrade findbugs-annotations to 2.0.2 (from 2.0.1)
* 2013-10-27 - (standard) Upgrade guava to 15.0 (from 14.0.1)


## Version 2

* 2013-09-23 - Only run the license plugin on JDK7 (plugin is compiled with JDK7)
* 2013-09-23 - Upgrade install plugin to 2.5 (from 2.4)
* 2013-09-23 - Upgrade license plugin to 2.5 (from 2.2)
* 2013-09-23 - Upgrade Jackson dependency to 2.2.3 (from 2.2.2)
* 2013-09-23 - Upgrade jetty dependency to 8.1.13.v20130916 (from 8.1.12.v20130726)
* 2013-09-23 - Upgrade TestNG dependency to 6.8.7 (from 6.8.5)

## Version 1

* 2013-08-17 - Upgrade surefire plugin to 2.16 (from 2.15)
* 2013-08-17 - Upgrade joda-time dependency to 2.3 (from 2.2)
* 2013-08-17 - Upgrade Guice dependencies to 4.0-beta (from 3.0)
* 2013-08-17 - Upgrade jetty dependencies to 8.1.12.v20130726 (from 8.1.9.v20130131)
* 2013-08-17 - Upgrade objenesis dependency to 1.4 (from 1.3)
* 2013-08-17 - Upgrade javax.validation dependency to 1.1.0.Final (from 1.0.0.GA)
* 2013-08-17 - Exclude jacoco plugin from eclipse execution

