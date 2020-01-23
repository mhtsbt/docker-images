FROM nvidia/cuda:10.2-base-ubuntu18.04

RUN apt-get update
RUN apt-get install -y git python3 nano python3-pip libsm6 libxrender-dev screen tmux

RUN git config --global user.email "matthias.hutsebaut@gmail.com"
RUN git config --global user.name "mhtsbt"
RUN git config --global credential.helper 'cache –timeout 28800'

RUN pip3 install --no-cache-dir torch tensorflow-gpu numpy tensorboard matplotlib Pillow

COPY bash_aliases /root/.bash_aliases

CMD ["tail","-f","/dev/null"]
