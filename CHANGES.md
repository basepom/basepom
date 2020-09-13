# Changes

This is the changelog for the basepom project. It follows [Keep a Changelog v1.0.0](http://keepachangelog.com/en/1.0.0/).

Every release of this project is potentially incompatible to the previous one even though reasonable attempts are made to be drop-in compatible. There is only a major version number which is incremented with every release.

## 33 - 2020-09-13

This is a backport to JDK8 for the basepom project. It will try to keep up with the regular basepom releases which are JDK9+ since version 32.

### Differences to the basepom release

* use `basepom8` for artifact names and release tags.
* system JDK and target JDK must be named "1.8", the "8" version does not work with the older version of the compiler.
* use `<source>` and `<target>` for the compiler and javadoc plugins.
* use the toolchains plugin to support cross-compilation

See [basepom8 Release 33 Changes](https://github.com/basepom/basepom/blob/master/CHANGES.md#33---2020-09-13) for everything else.
