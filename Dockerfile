# Use an official Python runtime as a parent image
FROM ubuntu

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN pip install --upgrade pip
RUN useradd -r liota
RUN git clone https://github.com/vmware/liota.git
RUN cd /liota && python setup.py install
RUN /usr/lib/liota/post-install-setup.sh
