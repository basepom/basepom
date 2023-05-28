# Changes

This is the changelog for the basepom project. It follows [Keep a Changelog v1.0.0](http://keepachangelog.com/en/1.0.0/).

Every release of this project is potentially incompatible to the previous one even though reasonable attempts are made to be drop-in compatible. There is only a major version number which is incremented with every release.

## Unreleased

### Added

* added `basepom.site.scm.comment` to set the site checkin comment. Default is `Site checkin for project ${project.name} (${project.version})`

### Changed

* Bump dependency-versions-check plugin to 4.0.0 (from 3.2.0)
* Bump duplicate-finder plugin to 2.0.1 (from 1.5.1)
* Bump asciidoctor plugin to 2.2.4 (from 2.2.3)
* Bump git-commit-id plugin to 6.0.0 (from 5.0.0)
* Bump assembly plugin to 3.6.0 (from 3.5.0)
* Bump checkstyle plugin to 3.3.0 (from 3.2.2)
* Bump dependency plugin to 3.6.0 (from 3.5.0)
* Bump pmd plugin to 3.21.0 (from 3.20.0)
* Bump scm plugin to 2.0.1 (from 2.0.0)
* Bump source plugin to 3.3.0 (from 3.2.1)


## 52 - 2023-05-12

### Added

* Add `basepom.test.arguments` and `basepom.it.arguments` to provide additional argline arguments to unit tests and integration tests.

### Changed

* Bump really-executable-jars plugin to 2.1.1 (from 2.0.0)
* Bump deploy plugin to 3.1.1 (from 3.1.0)
* Bump checkstyle plugin to 3.2.2 (from 3.2.1)
* Bump enforcer plugin to 3.3.0 (from 3.2.1)
* Bump surefire plugin to 3.1.0 (from 3.0.0-M9)
* Bump failsafe plugin to 3.1.0 (from 3.0.0-M9)
* Bump install plugin to 3.1.1 (from 3.1.0)
* Bump invoker plugin to 3.5.1 (from 3.5.0)
* Bump release plugin to 3.0.0 (from 3.0.0-M7)
* Bump resources plugin to 3.3.1 (from 3.3.0)
* Bump scm plugin to 2.0.0 (from 2.0.0-M3)
* Bump scm-publish plugin to 3.2.1 (from 3.1.0)
* Bump site plugin to 4.0.0-M8 (from 4.0.0-M5)
* Bump jacoco plugin to 0.8.10 (from 0.8.8)
* Bump spotbugs plugin to 4.7.3.4 (from 4.7.3.2)
* Bump project-info-reports plugin to 3.4.3 (from 3.4.2)
* Bump license plugin to 4.2 (from 4.2.rc3)
* Bump build-helper plugin to 3.4.0 (from 3.3.0)
* Bump gpg-plugin to 3.1.0 (from 3.0.1)
* Bump checkstyle to 10.11.0 (from 10.8.0)
* Bump asciidoctorj to 2.5.8 (from 2.5.6)
* Bump asciidoctorj-diagram to 2.2.8 (from 2.2.3)
* Bump dependency-analyzer to 1.13.2 (from 1.13.0)

* Deploy profiles (basepom.oss-release and basepom.deploy-release) should also skip integration tests.
* switch back to using the `basepom.deploy-release` by default. The Nexus plugin has too many bugs (https://issues.sonatype.org/browse/NEXUS-38079, https://issues.sonatype.org/browse/NEXUS-38262) which can only be fixed by sonatype because of their development model.

## 52 - 2023-03-02

### Added

* license plugin now ignores `.keepme` files
* nexus oss plugin (1.6.13)

### Changed

* Bump pmd to 6.55.0 (from 6.53.0)
* Bump checkstyle to 10.8.0 (from 10.6.0)
* Bump failsafe plugin to 3.0.0-M9 (from 3.0.0-M7)
* Bump surefire plugin to 3.0.0-M9 (from 3.0.0-M7)
* Bump checkstyle plugin to 3.2.1 (from 3.2.0)
* Bump dependency plugin to 3.5.0 (from 3.4.0)
* Bump enforcer plugin to 3.2.1 (from 3.1.0)
* Bump project-info reports plugin to 3.4.2 (from 3.4.1)
* Bump compiler plugin to 3.11.0 (from 3.10.1)
* Bump assembly plugin to 3.5.0 (from 3.4.2)
* Bump deploy plugin to 3.1.0 (from 3.0.0)
* Bump invoker plugin to 3.5.0 (from 3.4.0)
* Bump javadoc plugin to 3.5.0 (from 3.4.1)
* Bump pmd plugin to 3.20.0 (from 3.19.0)
* Bump site plugin to 4.0.0-M5 (from 4.0.0-M4)
* Bump spotbugs plugin to 4.7.3.2 (from 4.7.3.0)

* for the license plugin, the `header`, `includes` and `excludes` properties are now wrapped in a license set. The old configuration was deprecated for a while and Maven 3.9 has started nagging about it. This affects any project that adds custom excludes or includes. The `basepom.license.header` property still works as before.
* the `oss` parent pom will now use the nexus oss staging plugin by default. A new profile, `basepom.deploy-release`, has been added that uses the maven deploy plugin. Suggested by @klausbrunner in #64.

### Fixed

* removed invalid `sourceEncoding` property from pmd plugin configuration
* rename `encoding` property to `inputEncoding` for checkstyle plugin configuration

## 51 - 2023-01-03

### Changed

* fixed invoker timeout property
* Bump pmd to 6.53.0 (from 6.50.0)
* Bump checkstyle to 10.6.0 (from 10.3.4)
* Bump site plugin to 4.0.0-M4 (from 4.0.0-M3)
* Bump invoker plugin to 3.4.0 (from 3.3.0)
* Bump dependency analyzer to 1.13.0 (from 1.12.0)
* Bump dependency plugin to 3.4.0 (from 3.3.0)
* Bump install plugin to 3.1.0 (from 3.0.1)
* Bump shade plugin to 3.4.1 (from 3.4.0)
* Bump release plugin to 3.0.0-M7 (from 3.0.0-M6)
* Bump scm plugin to 2.0.0-M3 (from 2.0.0-M2)
* Bump spotbugs plugin to 4.7.3.0 (from 4.7.2.1)
* Bump really-executable-jars plugin to 2.0.0 (from 1.5.0)
* turn off pmd printFailingErrors, the plugin otherwise logs errors twice (see https://github.com/pmd/pmd/issues/4001 / MPMD-344)


## 50 - 2022-10-18

### Added

* Add more exclusions for JSR-330 dependencies (#61, thank you @JKomoroski)

### Changed

* Bump pmd to 6.50.0 (from 6.49.0)
* Bump checkstyle to 10.3.4 (from 10.3.3)
* Bump spotbugs to 4.7.3 (from 4.7.1)
* Bump jar plugin to 3.3.0 (from 3.2.2)
* Bump shade plugin to 3.4.0 (from 3.3.0)
* Bump pmd plugin to 3.19.0 (from 3.18.0)
* Bump spotbugs plugin to 4.7.2.1 (from 4.7.1.1)

## 49 - 2022-09-01

### Added

* Add `basepom.site.scm.checkout-directory` and `basepom.site.scm.try-update` to control local site scm checkout.
* Add `basepom.install.skip` and `basepom.deploy.skip` to control deployment and installation.
* Add `basepom.dependency-management.allow-versions` and `basepom.dependency-management.allow-exclusions`.
* Add `basepom.javadoc.exclude-package-names` to exclude specific package names from javadoc generation.
* Add `basepom.test.groups` and `basepom.it.groups` to select specific test groups for execution.

### Changed

* Changed the repository layout to release documentation and deployment at the same time.
* Bump checkstyle plugin to 3.2.0 (from 3.1.2)
* Bump javadoc plugin to 3.4.1 (from 3.4.0)
* Bump pmd plugin to 3.18.0(from 3.17.0)
* Bump project-info-reports plugin to 3.4.1 (from 3.4.0)
* Bump jxr plugin to 3.3.0 (from 3.2.0)
* Bump pmd to 6.49.0 (from 6.48.0)
* Bump checkstyle to 10.3.3 (from 10.3.2)

## 48 - 2022-08-12

**Note** This is the first release that is [fully documented](https://basepom.org).

### Added

* Add `basepom.license.header` to control the checked file license header
* Add `basepom.gpg.use-agent` to control GnuPG agent use
* Add `basepom.site.skip-deploy` and `basepom.site.scm.skip-deploy` to control site deployment.
* Add configuration for the publish-scm plugin
* Add documentation

### Changed

* Move `report-integration` site report to the `basepom.invoker.reporting` plugin.
* Skip checkers when releasing code, they have already been run as part of the prepare step

## 47 - 2022-08-10

### Changed

* Replaced `project.build.sourceVersion` and `project.build.targetVersion` with the more compatible `maven.compiler.source` and `maven.compiler.target` setting.
* Renamed `basepom.build.use-incremental-compilation` to `basepom.compiler.use-incremental-compilation`.
* Changed default value for `basepom.test.fork-count` from `1.0C` to `0.75C`.
* Replaced `basepom.it.parallel` and `basepom.failsafe.fork-count` with `basepom.it.fork-count` with a default of `0.5C`.
* Replaced `basepom.failsafe.timeout` with `basepom.it.timeout`.
* Moved jacoco agent preparation from the `initialize` to the `process-test-classes` phase. Too bad that there is no `pre-test`.
* Moved integration test jacoco agent preparation into the integration test profile.
* Bump basepom policy to 10 (from 9)
* Bump spotbugs plugin to 4.7.1.1 (from 4.7.1.0)
* Bump assembly plugin to 3.4.2 (from 3.4.1)
* Bump deploy plugin to 3.0.0 (from 3.0.0-M2)
* Bump install plugin to 3.0.1 (from 3.0.0-M1)
* Bump resources plugin to 3.3.0 (from 3.2.0)
* Bump scm plugin to 2.0.0-M2 (from 2.0.0-M1)
* Bump site plugin to 4.0.0-M3 (from 4.0.0-M2)
* Bump project-info-reports plugin to 3.4.0 (from 3.3.0)
* Bump pmd to 6.48.0 (from 6.47.0)
* Bump checkstyle to 10.3.2 to (from 10.3.1)

### Added

* Introduced `basepom.site.fail-javadoc` for site generation, default is `${basepom.check.fail-javadoc}`.
* Invoker plugin now uses `basepom.it.timeout` for test execution.

### Removed

* Removed `basepom.check.skip-javadoc` again; javadoc does not really align to the checkers (except for failure), generation is often controlled separately.
* Removed plugins that do not contribute default goals to the lifecycle and are not explicitly configured. Those plugins are still configured in the `<pluginManagement>` section.
* The `java.security.egd` setting for unit tests is no longer needed (since Java 8).

## 46 - 2022-07-16

### Changed

* Bump invoker plugin to 3.3.0 (from 3.2.2)
* Bump pmd plugin to 3.17.0 (from 3.16.0)
* Bump failsafe plugin to 3.0.0-M7 (from 3.0.0-M6)
* Bump surefire plugin to 3.0.0-M7 (from 3.0.0-M6)
* Bump site plugin to 4.0.0-M2 (from 4.0.0-M1)
* Bump enforcer plugin to 3.1.0 (from 3.0.0)
* Bump release plugin to 3.0.0-M6 (from 3.0.0-M5)
* Bump assembly plugin to 3.4.1 (from 3.3.0)
* Bump spotbugs plugin to 4.7.1.0 (from 4.7.0)
* Bump pmd to 6.47.0 (from 6.45.0)
* Bump checkstyle to 10.3.1 to (from 10.2)
* Bump spotbugs to 4.7.1 (from 4.7.0)

* spotbugs now supports multiple exclusion files. This version changes the default exclusion setup in the `minimal` and `oss`:

Old:
```xml
  <excludeFilterFile>spotbugs/spotbugs-suppress.xml</excludeFilterFile>
```

New:

``` xml
<excludeFilterFiles>
    <excludeFilterFile>spotbugs/spotbugs-suppress.xml</excludeFilterFile>
</excludeFilterFiles>
```

If a project supplies its own spotbugs exclusion file, it can no longer rely on overwriting the default file by setting the `excludeFilteFile` property but must do

``` xml
<excludeFilterFiles combine.children="overwrite">
    <excludeFilterFile>... new exclusion files ...</excludeFilterFile>
</excludeFilterFiles>
```

Otherwise, the default exclusion file will be loaded in addition to any project specific files. There are only very few exclusions (see [this file](https://github.com/basepom/basepom-policy/blob/master/src/main/resources/spotbugs/spotbugs-suppress.xml) for a full list) so this might not be a big problem.


## 45 - 2022-05-25

### Changed

* Correctly ignore jakarta.inject annotations
* Bump policy jar to 9 (from 8)
* Bump spotbugs plugin to 4.7.0.0 (from 4.6.0.0)
* Bump spotbugs to 4.7.0 (from 4.6.0)
* Bump site plugin to 4.0.0-M1 (from 3.12.0)
* Bump project-info-reports plugin to 3.3.0 (from 3.2.2)
* Bump property-helper plugin to 3.0 (from 2.0)
* Bump policy jar to 9 (from 8) to suppress noisy new spotbugs checks
* Change `basepom.site.check.skip-*` properties to `basepom.site.skip-*` properties.
* Cleanup site reports

### Added
* Add suppression of noisy 4.7.x spotbugs annotations to the minimal pom.
* Add workaround for MDEP-804 to minimal pom
* Use hardcoded `src/it` folder to activate invoker integration test profiles (maven limitation)



## 44 - 2022-04-30

This release finally updates the dependency plugin post 3.1.2, thus enabling Java 17 support. However, the behavior with test dependencies has changed from the 3.1.2 release. If a build reports large numbers of *Non-test scoped test only dependencies found* problems, this is due to the new behavior.

The recommended fix from the Apache Maven team is either to add these dependencies to the `ignoredNonTestScopedDependencies` configuration which is brittle and cumbersome or to change the scope of these dependencies to `test` which may break for many reasons, especially in larger projects. Changing the scope also clashes with the dependency-scope plugin so this must be temporarily disabled with `<basepom.check.skip-dependency-scope>true</basepom.check.skip-dependency-scope>`.

There is a fix proposed as https://issues.apache.org/jira/browse/MDEP-804. Once that has been merged and released, the old behavior can be restored.

### Added

* create report set for javadoc site
* new controls for site reports (`basepom.site.check.skip-...` and `basepom.site.test.skip`) to control site report generation independently from main report generation. All settings default to the parent (`basepom.check.skip-...` and `basepom.test.skip`) values.

### Changed
* Bump clean plugin to 3.2.0 (from 3.1.0)
* Bump compiler plugin to 3.10.1 (from 3.9.0)
* Bump failsafe plugin to 3.0.0-M6 (from 3.0.0-M5)
* Bump site plugin to 3.12.0 (from 3.10.0)
* Bump surefire plugin to 3.0.0-M6 (from 3.0.0-M5)
* Bump share plugin to 3.3.0 (from 3.2.4)
* Bump javadoc plugin to 3.4.0 (from 3.3.1)
* Bump pmd plugin to 3.16.0 (from 3.15.0)
* Bump dependency plugin to 3.3.0 (from 3.1.2)
* Bump dependency-analyzer to 1.12.0 (from 1.11.1)
* Bump PMD to 6.45.0 (from 6.42.0)
* Bump checkstyle to 10.2 (from 9.2.1)
* Bump spotbugs to 4.6.0 (from 4.5.3)
* Bump jacoco plugin to 0.8.8 (from 0.8.7)
* Bump project-info-reports plugin to 3.2.2 (from 3.1.2)
* Bump spotbugs plugin to 4.6.0.0 (from 4.5.3.0)
* Bump jxr plugin to 3.2.0 (from 3.1.1)
* Bump license plugin to 4.2.rc3 (from 4.2.rc2)


## 43 - 2022-01-29

### Added

* new switch `basepom.site.skip` (default to `false`) to skip site generation.
* control report generation with the same flags as the underlying plugins (test, javadoc, checkstyle, pmd, spotbugs)
* add scm-publish plugin (version 3.1.0)
* exclude `CNAME` file (for github site setup)

### Changed
* Bump deploy plugin to 3.0.0-M2 (from 3.0.0-M1)
* Bump site plugin to 3.10.0 (from 3.9.1)
* Bump compiler plugin to 3.9.0 (from 3.8.1)
* Bump jar plugin to 3.2.2 (from 3.2.0)
* Bump release plugin to 3.0.0-M5 (from 3.0.0-M4)
* Bump scm plugin to 2.0.0-M1 (from 1.12.0)
* Bump PMD to 6.42.0 (from 6.39.0)
* Bump spotbugs to 4.5.3 (from 4.4.2)
* Bump checkstyle to 9.2.1 (from 9.0.1)
* Bump build-helper plugin to 3.3.0 (from 3.2.0)
* Bump duplicate-finder plugin to 1.5.1 (from 1.5.0)
* Bump spotbugs plugin to 4.5.3.0 (from 4.4.2.2)
* Bump license plugin to 4.2.rc2 (from 4.2.rc1)


## 42 - 2021-10-26

### Fixed

* scm plugin version to 1.12.0

### Changed

* Bump spotbugs to 4.4.2.2 (from 4.4.2)

## 41 - 2021-10-13

### Changed

* enforce JDK 11+ for using basepom.
* enforce Maven 3.6.0 or better.
* git-commit-id now has new coordinates (io.github.git-commit-id:git-commit-id-maven-plugin)
* Bump PMD to 6.39.0 (from 6.36.0)
* Bump checkstyle to 9.0.1 (from 8.44)
* Bump spotbugs to 4.4.2 (from 4.3.0)
* Bump javadoc plugin to 3.3.1 (from 3.3.0)
* Bump pmd plugin to 3.15.0 (from 3.14.0)
* Bump enforcer plugin to 3.0.0 (from 3.0.0-M3)
* Bump scm plugin to 1.12 (from 1.11.2)
* Bump spotbugs plugin to 4.4.1 (from 4.3.0)
* Bump git-commit-id plugin to 5.0.0 (from 4.0.5)
* Bump license plugin to 4.2.rc1 (from 4.1)

## 40 - 2021-07-12

**IMPORTANT! WITH THE UPCOMING RELEASE OF JDK17, VERSION 40 IS THE LAST BASEPOM RELEASE THAT SUPPORTS JDK 9 AND 10 AS THE BUILD JDK. STARTING WITH THE NEXT RELEASE, ONLY JDK11+ WILL BE SUPPORTED (TARGET JDK CAN STILL BE 7-10).

### Added

* add even more annotation only jars to dependency checker exclusion
  * com.github.spotbugs:spotbugs-annotations
  * org.checkerframework:checker-qual
* make javadoc doclint and show level configurable with two new settings: `basepom.javadoc.doclint` and `basepom.javadoc.show`
* Add more comprehensive reporting to the oss profile.
* Bump spotbugs to 4.3.0 (from 4.2.3)
* Bump checkstyle to 8.44 (from 8.43)
* Bump PMD to 6.36.0 (from 6.35.0)
* Bump spotbugs plugin to 4.3.0 (from 4.2.3)
* Bump jxr plugin to 3.1.1 (from 3.0.0)

## 39 - 2021-06-22

### Added

* add more annotation-only jars to dependency checker exclusion
  * jakarta.inject:jakarta.inject-api
  * com.google.errorprone:error_prone_annotations
* Bump PMD to 6.35.0 (from 6.34.0)
* Bump checkstyle to 8.43 (from 8.42)
* Bump git-commit to 4.0.5 (from 4.0.4)
* add `project.build.sourceVersion` and `project.build.targetVersion` to set the source and target fields for the compiler. By default use the same value as `project.build.targetJdk`. There are some corner cases where there compiler plugin will ignore flags (e.g. -parameter) if only the `<release>` element but not the `<source>` element is set.
* add .g4 and .stg as known endings for the license plugin


## 38 - 2021-05-28

* re-merged the `basepom.compiler.parameters` flag.

## 37 - 2021-05-28 (DO NOT USE)

### Changed

* Bump PMD to 6.34.0 (from 6.33.0)
* Bump checkstyle to 8.42 (from 8.41.1)
* Bump spotbugs to 4.2.3 (from 4.2.2)
* Bump release plugin to 3.0.0-M4 (from 2.5.3)
* Bump javadoc plugin to 3.3.0 (from 3.2.0)
* Bump gpg plugin to 3.0.1 (from 1.6)
* Bump spotbugs plugin to 4.2.3 (from 4.2.0)
* Bump jacoco to 0.8.7 (from 0.8.6)
* Bump license plugin to 4.1 (from 4.0.rc2)

### Added

* Also run CI builds with Java 16
* Added project-info-reports plugin (3.1.2)
* Add a basic reporting section to oss pom.
* fix for the bad "jaspersoft.org" repo in spring dependencies in the minimal pom.
* add 'jakarta.indect:jakarta.inject-api' to the conflicting deps for injection in minimal.
* force git-id plugin to run for every module in multi-module build, can be controlled with `basepom.git-id.run-only-once`.

## 36 - 2021-04-01

### Added

* Make parameters option to the compiler configurable with `basepom.compiler.parameters`. Default is `true` (add parameters to the class files).

### Changed

* Only report direct dependency problems with the dependency version check plugin. Configurable with `basepom.dvc.direct-only`, default is `true`.
* Bump dependency-versions-check plugin to 3.2.0 (from 3.1.0)
* Bump PMD to 6.33.0 (from 6.32.0)
* Bump checkstyle to 8.41.1 (from 8.41)


### Added

* add another annotation-only jars to dependency checker exclusion
  * jakarta.inject (javax.inject and org.glassfish.hk2.external)


## 35 - 2021-03-22

### Changed

* Removed bad defaults for dependency-versions-check plugin
* Bump dependency-versions-check plugin to 3.1.0 (from 3.0.0)

## 34 - 2021-03-19

### Changed

* Some link housekeeping (update outdated links etc.)
* Bump PMD to 6.32.0 (from 6.27.0)
* Bump checkstyle to 8.41 (from 8.36)
* Bump spotbugs to 4.2.2 (from 4.1.2)
* Bump checkstyle plugin to 3.1.2 (from 3.1.1)
* Bump pmd plugin to 3.14.0 (from 3.13.0)
* Bump invoker plugin to 3.2.2 (from 3.2.1)
* Bump duplicate-finder plugin to 1.5.0 (from 1.4.0)
* Bump spotbugs plugin to 4.2.0 (from 4.0.4)
* Bump jacoco plugin to 0.8.6 (from 0.8.5)
* Bump git-commit to 4.0.4 (from 4.0.2)
* Replace ning dependency-versions-check plugin with basepom plugin 3.0.0

### Removed

* Removed scala support. This has not gotten any love beyond basic "bump the plugin", this is better served with a possible corporate pom than having this in the foundation code. If maven ever supports mixins, this may come back as a mixin.

## 33 - 2020-09-13

### Added

* more ignored resource patterns for the duplicate finder plugin
  * .afm, .properties, .gif, .png, .txt, .dtd
  * clarify .java to only match at the end of a pattern
  * about*, license*, .*, *schema
  * mime.types, plugin.xml, reference.conf. changelog.txt
* add `generated-sources/annotations` to the pmd exclusion list
* add more annotation-only jars to dependency checker exclusion
  * javax.inject (javax.inject and org.glassfish.hk2.external)
  * aopalliance (aopalliance and org.glassfish.hk2.external)
* new property `basepom.build.use-incremental-compilation` to turn incremental on and off. Defaults to off.
* new property `basepom.it.parallel` to control the number of parallel invoker integration test executions. Defaults to 1.
* set default for groovy license formatting.

### Changed

* use github actions for CI, remove travis
* use maven wrapper
* CI build with JDK 9 - 14

* Bump PMD to 6.27.0 (from 6.20.0)
* Bump checkstyle to 8.36 (from 8.27)
* Bump spotbugs to 4.1.2 (from 3.1.12)
* Bump failsafe plugin to 3.0.0-M5 (from 3.0.0-M4)
* Bump resources plugin to 3.2.0 (from 3.1.0)
* Bump site plugin to 3.9.1 (from 3.8.2)
* Bump surefire plugin to 3.0.0-M5 (from 3.0.0-M4)
* Bump shade plugin to 3.2.4 (from 3.2.1) (see below)
* Bump source plugin to 3.2.1 (from 3.2.0)
* Bump checkstyle plugin to 3.1.1 (from 3.1.0)
* Bump javadoc plugin to 3.2.0 (from 3.1.1)
* Bump pmd plugin to 3.13.0 (from 3.12.0)
* Bump assembly plugin to 3.3.0 (from 3.2.0)
* Bump dependency plugin to 3.1.2 (from 3.1.1)
* Bump build-helper plugin to 3.2.0 (from 3.0.0)
* Bump dependency-scope plugin to 0.10 (from 0.8)
* Bump spotbugs plugin to 4.0.4 (from 3.1.12.2)
* Bump git-commit-id plugin to 4.0.2 (from 4.0.0)
* Bump scala plugin to 4.4.0  (from 4.3.0)
* Bump license plugin to 4.0.rc2 (from 3.0)

* Bump basepom-policy to 8 (from 7) (see below)

* Use the collecting manifest transformer to also add the main class to an executable jar. This is a workaround for a change in the shade plugin since 3.2.4.
* remove spurious `<debug>` statement from the invoker plugin.

## Version 32 - 2019-12-06

This version is identical to version 31, except that it requires a JDK 9+ as the system JDK (the JDK that runs maven). If the build can not be run on JDK 9+, basepom 31 has identical functionality. It no longer supports the toolchain plugin.

### Changed

* Requires JDK 9+ as the system JDK. Most important change is switching from `<source>` and `<target>` for the compiler plugin to `<release>`. This switch, which is only available in JDK 9+, allows correct compilation for all older versions of Java (6, 7, 8 etc.) without the need to provide a bootclasspath or the toolchain plugin. The resulting binaries will still be compatible with the given JDK (JDK 11, the current LTS version) supports 6 - 11.
* The values supported by the `project.build.targetJdk` have changed. 1.6, 1.7, 1.8 are no longer supported; the value must now be a single number (6 - the version of the current system JDK). Default is now `8` (was `1.8`).
* A new property `project.build.systemJdk` has been introduced. This specifies the minimal version (enforced by the enforcer)) here is now `9`.

### Removed

* The toolchain plugin has been removed.


## Version 31 - 2019-12-06

**IMPORTANT! THIS IS THE LAST BASEPOM RELEASE THAT SUPPORTS JDK 8 AS THE BUILD JDK! STARTING WITH VERSION 32, THE BUILD JDK MUST BE JDK9+ (THE TARGET JDK CAN STILL BE 7, 8 OR BETTER). WITH JDK 11 BEING THE DEFAULT LTS FOR ALMOST 15 MONTHS, SUPPORTING JDK 8 IS NO LONGER A PRIORITY!**

### Added

* Bump PMD to 6.20.0 (from 6.18.0)
* Bump checkstyle to 8.27.0 (from 8.25.0)
* Bump failsafe plugin to 3.0.0-M4 (from 3.0.0-M3)
* Bump surefire plugin to 3.0.0-M4 (from 3.0.0-M3)
* Bump jar plugin to 3.2.0 (from 3.1.2)
* Bump source plugin to 3.2.0 (from 3.1.0)
* Bump assembly plugin to 3.2.0 (from 3.1.1)
* Bump enforcer plugin to 3.0.0-M3 (from 3.0.0-M2)
* Bump duplicate-finder plugin to 1.4.0 (from 1.3.0)
* Bump git-commit-id plugin to 4.0.0 (from 3.0.1)
* Bump scala plugin to 4.3.0 (from 4.2.0)

### Changed

* Default JDK vendor for toolchain is now "openjdk" (from "oracle")



## Version 30 - 2019-10-14

### Changed

* Changelog now follows [Keep a Changelog v1.0.0](http://keepachangelog.com/en/1.0.0/).
* Bump PMD to 6.18.0 (from 6.16.0)
* Bump checkstyle to 8.25.0 (from 8.22.0)
* Bump site plugin to 3.8.2 (from 3.7.1)
* Bump javadoc plugin to 3.1.1 (from 3.1.0)
* Bump invoker plugin to 3.2.1 (from 3.2.0)
* Bump spotbugs plugin to 3.1.12.2 (from 3.1.12)
* Bump jacoco plugin to 0.8.5 (from 0.8.4)
* Bump git-commit-id plugin to 3.0.1 (from 3.0.0)
* Bump scala plugin to 4.2.0 (from 4.0.2)



## Version 29 - 2019-07-09

### Changed

* Bump compiler plugin to 3.8.1 (from 3.8.0)
* Bump jar plugin to 3.1.2 (from 3.1.1)
* Bump source plugin to 3.1.0 (from 3.0.1)
* Bump checkstyle plugin to 3.1.0 (from 3.0.0)
* Bump javadoc plugin to 3.1.0 (from 3.0.1)
* Bump pmd plugin to 3.12.0 (from 3.11.0)
* Bump scm plugin to 1.11.2 (from 1.11.1)
* Bump git-commit-id plugin to 3.0.0 (from 2.2.6)
* Bump jacoco plugin to 0.8.4 (from 0.8.3)
* Bump toolchains plugin to 3.0.0 (from 1.1)
* Bump checkstyle to 8.22 (from 8.17)
* Bump spotbugs and spotbugs plugin to 3.1.12 (from 3.1.11)
* Bump scala plugin to 4.1.0 (from 3.4.6)
* Bump pmd to 6.16.0 (from 6.11.0)

### Removed

* remove prerequisite clause (remove warning with maven 3.6.x)

### Fixed

* use basepom policy 7 for checkstyle 8.2x compatibility


# Old (pre Version 29) Changelog


## Version 28

* 2018-09-26 - (foundation) Separate the spotbugs core and spotbugs plugin
version properties. They are identical by default.
* 2018-11-02 - (foundation) Make phase for dependency plugin configurable
* 2019-02-21 - (foundation) Upgrade deploy plugin to 3.0.0-M1 (from 2.8.2)
* 2019-02-21 - (foundation) Upgrade failsafe plugin to 3.0.0-M3 (from 2.22.0)
* 2019-02-21 - (foundation) Upgrade install plugin to 3.0.0-M1 (from 2.5.2)
* 2019-02-21 - (foundation) Upgrade surefire plugin to 3.0.0-M3 (from 2.22.0)
* 2019-02-21 - (foundation) Upgrade jar plugin to 3.1.1 (from 3.1.0)
* 2019-02-21 - (foundation) Upgrade shade plugin to 3.2.1 (from 3.1.1)
* 2019-02-21 - (foundation) Upgrade pmd plugin to 3.11.0 (from 3.10.0)
* 2019-02-21 - (foundation) Upgrade assembly plugin to 3.1.1 (from 3.1.0)
* 2019-02-21 - (foundation) Upgrade invoker plugin to 3.2.0 (from 3.1.0)
* 2019-02-21 - (foundation) Upgrade scm plugin to 1.11.1 (from 1.10.0)
* 2019-02-21 - (foundation) Upgrade jacoco plugin to 0.8.3 (from 0.8.2)
* 2019-02-21 - (foundation) Upgrade git-commit-id plugin to 2.2.6 (from 2.2.5)
* 2019-02-21 - (foundation) Upgrade scala plugin to 3.4.6 (from 3.4.2)
* 2019-02-21 - (foundation) Upgrade spotbugs and spotbugs plugin to 3.1.11 (from 3.1.6)
* 2019-02-21 - (foundation) Upgrade PMD to 6.11.0 (from 6.7.0)
* 2019-02-21 - (foundation) Upgrade Checkstyle to 8.17 (from 8.12)
* 2019-02-22 - Updated all execution id's to match `basepom.[optional profile name].<xxx>`
* 2019-02-25 - Make dependency analyzer version configurable
* 2019-02-25 - Support "install at end" and "deploy at end" (introducing `basepom.at-end.<xxx>` settings)

## Version 27

* 2018-09-07 - (foundation) Upgrade PMD to 6.7.0 (from 6.5.0)
* 2018-09-07 - (foundation) Upgrade checkstyle to 8.12 (from 8.11)
* 2018-09-07 - (foundation) Upgrade compiler plugin to 3.8.0 (from 3.7.0)
* 2018-09-07 - (foundation) Fix SCM version typo to be correctly 1.10.0
* 2018-09-07 - (foundation) Upgrade spotbugs plugin to 3.1.6 (from 3.1.5)
* 2018-09-07 - (foundation) Upgrade jacoco plugin to 0.8.2 (from 0.8.1)
* 2018-09-07 - (foundation) Upgrade git-commit-id plugin to 2.2.5 (from 2.2.4)
* 2018-09-07 - (foundation) Upgrade scala plugin to 3.4.2 (from 3.4.1)

## Version 26

Starting with version 26, the dead findbugs plugin is removed and
replaced with spotbugs. This should be a transparent change except
that the name of the properties to control and skip the plugin changes
from `findbugs` to `spotbugs`.

* 2018-07-11 - (foundation) Upgrade PMD to 6.5.0 (from 5.8.1)
* 2018-07-11 - (foundation) Upgrade pmd plugin to 3.10.0 (from 3.8)
* 2018-07-10 - (foundation) Remove findbugs
* 2018-07-10 - (foundation) Add spotbugs 3.1.5 to replace findbugs
* 2018-07-10 - (foundation) Upgrade checkstyle to 8.11 (from 8.4)
* 2018-07-10 - (foundation) Upgrade scala dependency to 2.11.12 (from 2.11.8)
* 2018-07-10 - (foundation) Upgrade minimal version of maven to 3.5.0
* 2018-07-09 - (foundation) Upgrade clean plugin to 3.1.0 (from 3.0.0)
* 2018-07-09 - (foundation) Upgrade failsafe plugin to 2.22.0 (from 2.20.1)
* 2018-07-09 - (foundation) Upgrade resources plugin to 3.1.0 (from 3.0.2)
* 2018-07-09 - (foundation) Upgrade site plugin to 3.7.1 (from 3.6)
* 2018-07-09 - (foundation) Upgrade surefire plugin to 2.22.0 (from 2.20.1)
* 2018-07-09 - (foundation) Upgrade jar plugin to 3.1.0 (from 3.0.2)
* 2018-07-09 - (foundation) Upgrade shade plugin to 3.1.1 (from 3.1.0)
* 2018-07-09 - (foundation) Upgrade checkstyle plugin to 3.0.0 (from 2.17)
* 2018-07-09 - (foundation) Upgrade javadoc plugin to 3.0.1 (from 3.0.0-M1)
* 2018-07-09 - (foundation) Upgrade dependency plugin to 3.1.1 (from 3.0.2)
* 2018-07-09 - (foundation) Upgrade enforcer plugin to 3.0.0-M2 (from 3.0.0-M1)
* 2018-07-09 - (foundation) Upgrade invoker plugin to 3.1.0 (from 3.0.1)
* 2018-07-09 - (foundation) Upgrade scm plugin to 1.10 (from 1.9.5)
* 2018-07-09 - (foundation) Upgrade dependency-management plugin to 0.11 (from 0.7)
* 2018-07-09 - (foundation) Upgrade duplicate-finder plugin to 1.3.0 (from 1.2.1)
* 2018-07-09 - (foundation) Upgrade jacoco plugin to 0.8.1 (from 0.7.9)
* 2018-07-09 - (foundation) Upgrade git-commit-id plugin to 2.2.4 (from 2.2.3)
* 2018-07-09 - (foundation) Upgrade scala plugin to 3.4.1 (from 3.3.1)

## Version 25

* 2017-11-10 - (foundation) Upgrade javadoc plugin to 3.0.0-M1 (from 2.10.4)
* 2017-11-10 - (foundation) Upgrade enforcer plugin to 3.0.0-M1 (from 1.4.1)
* 2017-11-10 - (foundation) Upgrade invoker plugin to 3.0.1 (from 3.0.0)
* 2017-11-10 - (foundation) Upgrade assembly plugin to 3.1.0 (from 3.0.0)
* 2017-11-10 - (foundation) Upgrade shade plugin to 3.1.0 (from 3.0.0)
* 2017-11-10 - (foundation) Upgrade compiler plugin to 3.7.0 (from 3.6.1)
* 2017-11-10 - (foundation) Upgrade failsafe plugin to 2.20.1 (from 2.20)
* 2017-11-10 - (foundation) Upgrade surefire plugin to 2.20.1 (from 2.20)
* 2017-11-10 - (foundation) Upgrade dependency plugin to 3.0.2 (from 3.0.1)
* 2017-11-10 - (foundation) Upgrade scala plugin to 3.3.1 (from 3.2.2)
* 2017-11-10 - (foundation) Upgrade findbugs plugin to 3.0.5 (from 3.0.4)
* 2017-11-10 - (foundation) Upgrade git-commit-id plugin to 2.2.3 (from 2.2.2)
* 2017-11-10 - (foundation) Upgrade pmd to 5.8.1 (from 5.6.1)
* 2017-11-10 - (foundation) Upgrade checkstyle to 8.4 (from 6.19)
* 2017-11-10 - (minimal)    use basepom policy 6 for checkstyle 8 compatibility
* 2017-11-10 - (foundation) Introduce `basepom.executable.flags` to configure flags for binary (merged #35)

## Version 24

* 2017-07-06 - (foundation) Add Hubspot dependency-scope-maven-plugin (0.8) (#33)
* 2017-07-06 - (foundation) Add `basepom.compiler.fail-warnings` flag (default: false) to fail
                            compilation on warnings present. This brings back the behavior of
                            basepom 12 (the required compiler API change made it through the
                            maven ecosystem).
* 2017-07-06 - (foundation) Upgrade dependency plugin to 3.0.1 (from 2.10)
* 2017-07-06 - (foundation) Upgrade invoker plugin to 3.0.0 (from 2.0.0)

## Version 23
* 2017-05-11 - (foundation) Upgrade pmd to 5.6.1 (from 5.5.2), plugin 3.8 supports 5.6.1
* 2017-05-11 - (foundation) Upgrade pmd plugin to 3.8 (from 3.7)
* 2017-05-11 - (foundation) Upgrade surefire plugin to 2.20 (from 2.19.1)
* 2017-05-11 - (foundation) Upgrade failsafe plugin to 2.20 (from 2.19.1)
* 2017-05-11 - (foundation) Add ManifestTransformer when activating executable profile, not
                            replace all transformers (fix from #32)
* 2017-05-11 - (minimal)    Do not add main class to Collecting transformer, the activated profile
                            will use the ManifestTransformer from the foundation pom
* 2017-05-11 - (foundation) Actually update shade plugin to 3.0.0 (fixes #33)

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
* 2016-07-12 - (foundation) Upgrade jar plugin to 3.0.2 (from 2.6)
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
* 2014-06-12 - (standard) Upgrade logback dependency to 1.1.2 (from 1.1.1)
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

