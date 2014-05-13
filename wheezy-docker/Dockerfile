FROM debian:wheezy


ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade --assume-yes && apt-get dist-upgrade --assume-yes

RUN mkdir /root/.ssh/ && mkdir /var/run/sshd

ADD vagrant.pub /root/.ssh/authorized_keys

RUN chmod 400 /root/.ssh/authorized_keys && chown root:root /root/.ssh/authorized_keys

RUN apt-get install --assume-yes openssh-server

RUN rm /usr/sbin/policy-rc.d

EXPOSE 22
