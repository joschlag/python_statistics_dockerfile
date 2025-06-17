FROM ubuntu:22.04

RUN apt update && \
	apt upgrade -y && \
	apt install -y build-essential wget zlib1g zlib1g-dev python3 pip && \
	apt clean

RUN pip install packaging seaborn numpy pandas matplotlib seaborn

WORKDIR /home
RUN python3 setup.py install
RUN apt install -y sudo

