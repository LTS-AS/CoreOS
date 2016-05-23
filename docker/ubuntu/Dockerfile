FROM ubuntu
MAINTAINER havard.line@lts.no

#installing debian-packages
RUN apt-get update && apt-get install -y \
  git \
  openssh-server \
  python-pip \
  vim \
  wget
  
# installing python-packages
RUN pip install erppeek && \
  pip install pyyaml

# setting up SSHD. code found at https://docs.docker.com/engine/examples/running_ssh_service/
RUN mkdir /var/run/sshd
RUN echo 'root:a' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Setting up development enviroment
RUN git clone https://github.com/LTS-AS/CoreOS.git  /erpconnector && \
  git clone https://github.com/LTS-AS/ERPconnector.git /coreos

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
