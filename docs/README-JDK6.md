# Basepom and JDK6

With JDK6 being end-of-lifed for quite some time and JDK9 around the
corner, there is no point to dwell in the past. So basepom will assume
a JDK7 as the base line and JDK6 an unsupported configuration.

It was never an explicit goal for basepom to be backwards compatible
to JDK6 and if a plugin is JDK7+ only or a newer release is JDK7+
only, this did not stop upgrading. However, backwards compatibility
was never broken deliberately either.

Obviously a lot of code (mostly older JEE code and quite a bit of "big
data" (Hadoop) code still needs JDK6 as a target platform. The
recommended way here is to use a JDK7 or newer and the class library
from an installed JDK6 to build for JDK6.


## Use an older class library with a newer compiler

The following profile adds JDK6 cross compilation to a POM. This
requires that, in addition to JAVA_HOME, an environment variable
`JAVA6_HOME` is pointing at the JDK6 installation when maven is
invoked.

```xml
<properties>
    <project.jdk6.home>${env.JAVA6_HOME}</project.jdk6.home>
</properties>
...

<profiles>
    <profile>
        <id>cross-compile</id>
        <activation>
            <jdk>(1.6,]</jdk>
        </activation>
        <build>
            <pluginManagement>
                <plugins>
                    <plugin>
                        <artifactId>maven-compiler-plugin</artifactId>
                        <configuration>
                            <compilerArguments children.combine="append">
                                <bootclasspath>${project.jdk6.home}/jre/lib/rt.jar:${project.jdk6.home}/jre/lib/jce.jar:${project.jdk6.home}/../classes/classes.jar</bootclasspath>
                            </compilerArguments>
                        </configuration>
                    </plugin>
                </plugins>
            </pluginManagement>
        </build>
    </profile>
    ...
</profiles>
```

### Using travis ci with cross compilation

Travis CI unfortunately only installs a single JDK in the CI
environment. The following profile will activate when building a
project under travis ci and set the `project.jdk6.home` correctly. The
build will not actually use a cross-compilation JDK, so the results
should only be considered useful for a smoke test, not an actual
correct artifact.

```xml
<profile>
    <id>travis</id>
    <activation>
        <property>
            <name>env.TRAVIS</name>
        </property>
    </activation>
    <properties>
        <project.jdk6.home>${env.JAVA_HOME}</project.jdk6.home>
    </properties>
</profiles>
```

## maven findbugs plugin

Starting with release 3.0.0, findbugs is JDK7 only. If a project needs
to build with a JDK6 compiler (not just targetting JDK6 but use JDK6
to run maven), it is possible to accomodate for this by adding the
following profile to the build, which switches to findbugs 2.5.x.

```xml
<profile>
    <id>findbugs-jdk6</id>
    <activation>
        <jdk>[,1.7)</jdk>
    </activation>
    <properties>
        <dep.findbugs.version>2.0.3</dep.findbugs.version>
        <dep.plugin.findbugs.version>2.5.5</dep.plugin.findbugs.version>
    </properties>
</profile>
```

This should be considered a temporary workaround. The correct fix is
to implement cross-compilation using a newer JDK with the JDK6 class
library as described above.
