FROM ubuntu:18.04
WORKDIR '/home'
COPY agent.jar .
RUN apt-get update && apt-get install -y curl openjdk-11-jdk git maven && adduser --disabled-password --gecos "" jenkins
RUN curl -fsSL https://get.docker.com/ | sh
CMD java -jar agent.jar -jnlpUrl \
http://192.168.44.44:8880/computer/jenkins_slave/jenkins-agent.jnlp \
-secret \
f8e3e9bfc48e5ac57d12df82244822b5a7170ade8b1bf9bd8558d7da7ae76837 \
-workDir "/home/"