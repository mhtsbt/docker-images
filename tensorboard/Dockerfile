FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y git python-opencv python3.6 python3-pip

# make python 3.6 the default version
RUN rm /usr/bin/python3
RUN rm /usr/bin/python
RUN ln -s /usr/bin/python3.6 /usr/bin/python3
RUN ln -s /usr/bin/python3.6 /usr/bin/python

# upgrade pip
RUN python -m pip install --upgrade pip

# python packages
RUN python -m pip install tensorflow==1.12.0
RUN python -m pip install tensorboard

CMD ['tensorboard','--logdir','/logs']
