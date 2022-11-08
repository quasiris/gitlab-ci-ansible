FROM ubuntu:20.04
MAINTAINER Marius Kolkowski <marius.kolkowski@quasiris.de>
RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    apt-get update && \
    apt-get install -y ansible git curl unzip openjdk-11-jdk maven

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
	./aws/install

RUN rm -rf ./aws && \
    rm -f awscliv2.zip

RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts