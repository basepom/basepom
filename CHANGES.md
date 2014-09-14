# Changes

## Version 7

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
* 2014-07-22 - (standard) Upgrade Upgrade jackson dependency to 2.4.1 (from 2.4.1)
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

