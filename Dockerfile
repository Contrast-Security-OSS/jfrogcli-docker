FROM ubuntu:18.04

# Install curl
RUN apt-get update -y && apt-get install -y curl

# Install the JFrog CLI https://www.jfrog.com/confluence/display/CLI/JFrog+CLI
RUN curl -fL https://getcli.jfrog.io | sh