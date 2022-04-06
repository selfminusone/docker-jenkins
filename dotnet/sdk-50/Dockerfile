FROM jenkins/inbound-agent:alpine as jnlp
FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine

RUN apk -U add openjdk8-jre git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY --from=jnlp /usr/local/bin/jenkins-agent /usr/local/bin/jenkins-agent
COPY --from=jnlp /usr/share/jenkins/agent.jar /usr/share/jenkins/agent.jar

ENV JENKINS_URL=https://jenkins.selfminusone.sa.ngrok.io/
ENV JENKINS_WEB_SOCKET=true
ENV JENKINS_AGENT_WORKDIR=/home/jenkins/agent
ENV JENKINS_SECRET=1af91c22fdd105ae89555e6803b5a2461993054195f1189a40eace715feee468
ENV JENKINS_AGENT_NAME=dotnet-sdk-50


ENTRYPOINT ["/usr/local/bin/jenkins-agent"]