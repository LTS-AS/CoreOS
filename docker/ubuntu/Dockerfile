FROM     ubuntu:latest
MAINTAINER havard.line@lts.no
ENV USER a

#installing debian-packages
RUN apt-get update && apt-get install -y \
	cron-apt \
	git \
	openssh-server \
	python-pip \
	vim \
	wget

RUN echo "Setting up SSH-deamon"
RUN mkdir /var/run/sshd
RUN adduser --disabled-password --gecos "" $USER
RUN adduser $USER sudo
ADD authorized_keys /home/$USER/.ssh/authorized_keys
RUN chown $USER /home/$USER/.ssh/authorized_keys
RUN chown -R $USER:$USER /home/$USER/.ssh/authorized_keys
RUN chmod 700 /home/$USER/.ssh/authorized_keys

# installing python-packages
RUN pip install erppeek && \
  pip install pyyaml

EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]
