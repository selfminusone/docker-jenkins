FROM jenkins/inbound-agent:alpine as jnlp
FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

RUN apk -U add openjdk8-jre git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY --from=jnlp /usr/local/bin/jenkins-agent /usr/local/bin/jenkins-agent
COPY --from=jnlp /usr/share/jenkins/agent.jar /usr/share/jenkins/agent.jar

ENV JENKINS_URL=https://jenkins.selfminusone.sa.ngrok.io/
ENV JENKINS_WEB_SOCKET=true
ENV JENKINS_AGENT_WORKDIR=/home/jenkins/agent
ENV JENKINS_SECRET=d4dba0a40514b4253d5c6ff49d1b70fa34f3b1b039ad9a2ca652859cedc2c609
ENV JENKINS_AGENT_NAME=dotnet-sdk-60


ENTRYPOINT ["/usr/local/bin/jenkins-agent"]