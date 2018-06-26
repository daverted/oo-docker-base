FROM centos:7

LABEL maintainer="tjveil@gmail.com"

RUN yum install -y java-1.8.0-openjdk-devel.x86_64 net-tools \
    && yum -y update \
    && yum clean all \
    && curl \
        -o overops-event-generator.jar \
        -L https://s3.amazonaws.com/overops-event-generator/overops-event-generator-0.0.6-SNAPSHOT.jar

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk

ENV PATH $JAVA_HOME/bin:$PATH