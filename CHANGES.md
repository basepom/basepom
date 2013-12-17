# Changes

## Version 3

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

