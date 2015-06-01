# Base POMs

## Where are the docs?

Documentation is coming. With release 10, basepom is now finally in a shape where it is possible to accomodate a wider audience. 


## Building and deployment

Install and deploy using -N (enforced by `.mvn/maven.config` file).

    % mvn -N clean install

    % mvn -N clean deploy

Release using the release plugin:

    % mvn clean release:clean release:prepare release:perform


