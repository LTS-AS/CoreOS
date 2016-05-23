FROM ubuntu
MAINTAINER havard.line@lts.no

RUN apt-get update && apt-get install -y \
  git \
  openssh-server \
  vim \
  wget

RUN mkdir /var/run/sshd
RUN echo 'root:a' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN git clone https://github.com/LTS-AS/CoreOS.git  /erpconnector && \
  git clone https://github.com/LTS-AS/ERPconnector.git /coreos

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
