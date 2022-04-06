docker stop jenkins
docker rm jenkins
docker run --name jenkins -d -p 8080:8080 -v jenkins-data:/var/jenkins_home jenkins/jenkins

docker build -t jenkins-dotnet-sdk-31 dotnet/sdk-31/

docker build -t jenkins-dotnet-sdk-50 dotnet/sdk-50/

docker build -t jenkins-dotnet-sdk-60 dotnet/sdk-60/

docker stop jenkins-dotnet-sdk-31
docker rm jenkins-dotnet-sdk-31
docker run --name jenkins-dotnet-sdk-31 -d -v jenkins-dotnet-sdk-31-jenkins:/home/jenkins/.jenkins -v jenkins-dotnet-sdk-31-agent:/home/jenkins/agent --init jenkins-dotnet-sdk-31

docker stop jenkins-dotnet-sdk-50
docker rm jenkins-dotnet-sdk-50
docker run --name jenkins-dotnet-sdk-50 -d -v jenkins-dotnet-sdk-50-jenkins:/home/jenkins/.jenkins -v jenkins-dotnet-sdk-50-agent:/home/jenkins/agent --init jenkins-dotnet-sdk-50

docker stop jenkins-dotnet-sdk-60
docker rm jenkins-dotnet-sdk-60
docker run --name jenkins-dotnet-sdk-60 -d -v jenkins-dotnet-sdk-60-jenkins:/home/jenkins/.jenkins -v jenkins-dotnet-sdk-60-agent:/home/jenkins/agent --init jenkins-dotnet-sdk-60
