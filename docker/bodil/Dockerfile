FROM ubuntu
MAINTAINER havard.line@lts.no

#installing debian-packages
RUN apt-get update && apt-get install -y \
	git \
	python-pip \
	vim \
	wget

# Setting up development enviroment
RUN git clone https://github.com/LTS-AS/ERPconnector.git /erpconnector
  
# installing python-packages
RUN pip install voluptuous && \
	pip install pysmb

VOLUME ["/root/config"]

# Running scripts
CMD ["python", "/erpconnector/src/bodil.py"]
