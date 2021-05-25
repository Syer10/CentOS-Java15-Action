# Container image that runs your code
FROM centos:8

#Set Java home to where java will be installed
ENV JAVA_HOME /usr/java/openjdk/jdk-15.0.2

#Add java to PATH
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${JAVA_HOME}/bin

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# change permission to execute the script and
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]