FROM jenkins/inbound-agent:alpine as jnlp
FROM mcr.microsoft.com/dotnet/sdk:3.1-alpine

RUN apk -U add openjdk8-jre git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY --from=jnlp /usr/local/bin/jenkins-agent /usr/local/bin/jenkins-agent
COPY --from=jnlp /usr/share/jenkins/agent.jar /usr/share/jenkins/agent.jar

ENV JENKINS_URL=https://jenkins.selfminusone.sa.ngrok.io/
ENV JENKINS_WEB_SOCKET=true
ENV JENKINS_AGENT_WORKDIR=/home/jenkins/agent
ENV JENKINS_SECRET=50381bd8f78d5ed1019c199a415925be1552fb9196df2abc7e4667178e8bd4de 
ENV JENKINS_AGENT_NAME=dotnet-sdk-31


ENTRYPOINT ["/usr/local/bin/jenkins-agent"]