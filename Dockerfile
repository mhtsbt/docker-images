FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y git xvfb ffmpeg python-opencv python3.6 python3-pip

# python packages
RUN pip3 install opencv-python
RUN pip3 install gym gym[atari] 
RUN pip3 install numpy 
RUN pip3 install matplotlib 
RUN pip3 install atari_py
RUN pip3 install tensorboardX
RUN pip3 install torch
RUN pip3 install ray

# make python 3.6 the default version
RUN rm /usr/bin/python3
RUN rm /usr/bin/python
RUN ln -s /usr/bin/python3.6 /usr/bin/python3
RUN ln -s /usr/bin/python3.6 /usr/bin/python
