FROM ubuntu:16.04
MAINTAINER Devops Tenerife <devopstenerife@gmail.com>

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN mkdir -p /projects/ansible
RUN chmod 777 /projects/ansible

VOLUME /projects/ansible

RUN apt-get update && \
    apt-get install -y python && \
    apt-get install -y git && \
    apt-get install -y vim && \
    apt-get install -y sudo && \
    apt-get install -y whois

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN addgroup devops && \
    adduser devopsman --ingroup devops --home /home/devopsman && \
    usermod -aG sudo devopsman && \
    usermod --password ap5IOsWtJCR/A devopsman && \
    usermod --password 92fwqjR8nYQeo root

RUN echo "devopsman ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/custom-users

EXPOSE 22

WORKDIR /projects/ansible

USER devopsman

CMD ["sudo", "/usr/sbin/sshd", "-D"]