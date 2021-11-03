FROM ubuntu:18.04
WORKDIR '/home'
COPY agent.jar .
RUN apt-get update && apt-get install -y curl openjdk-11-jdk git maven && adduser --disabled-password --gecos "" jenkins
RUN curl -fsSL https://get.docker.com/ | sh
