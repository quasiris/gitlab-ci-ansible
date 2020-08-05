FROM ubuntu:20.04
MAINTAINER Marius Kolkowski <marius.kolkowski@quasiris.de>
RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    apt-get update && \
    apt-get install -y ansible git

RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts