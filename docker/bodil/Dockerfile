FROM ubuntu
MAINTAINER havard.line@lts.no

#installing debian-packages
RUN apt-get update && apt-get install -y \
	git \
	python-pip \
	vim \
	wget
  
# installing python-packages
RUN pip install erppeek && \
	pip install voluptuous

VOLUME ["/root/config"]

# Setting up development enviroment
RUN git clone https://github.com/LTS-AS/ERPconnector.git /erpconnector

# Running scripts
CMD ["python", "/erpconnector/src/hi.py"]
