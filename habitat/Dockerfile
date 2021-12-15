FROM nvidia/cuda:11.2.0-devel-ubuntu20.04

# Setup basic packages
RUN apt-get update && apt-get install -y --no-install-recommends build-essential git curl ca-certificates libjpeg-dev libpng-dev libglfw3-dev libglm-dev libx11-dev libomp-dev libegl1-mesa-dev libsm6 xorg-dev freeglut3-dev pkg-config libbullet-dev wget rsync && rm -rf /var/lib/apt/lists/*

# Install conda
RUN curl -o ~/miniconda.sh -O  https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh  &&\
    chmod +x ~/miniconda.sh &&\
    ~/miniconda.sh -b -p /opt/conda &&\
    rm ~/miniconda.sh &&\
    /opt/conda/bin/conda install numpy pyyaml scipy ipython mkl mkl-include &&\
    /opt/conda/bin/conda clean -ya
ENV PATH /opt/conda/bin:$PATH

# Conda environment
RUN /opt/conda/bin/conda create -n habitat python=3.8 cmake=3.14.0

# Setup habtiat-sim
RUN git clone --branch stable https://github.com/facebookresearch/habitat-sim.git
RUN cd habitat-sim
RUN /bin/bash -c ". activate habitat; cd habitat-sim; pip install --no-cache -r requirements.txt --progress-bar off"

# Install habitat-sim
RUN /bin/bash -c ". activate habitat; cd habitat-sim; python setup.py build_ext --parallel 1 install --headless --with-cuda"

# Setup habitat-api
RUN git clone --branch stable https://github.com/facebookresearch/habitat-api.git
RUN /bin/bash -c ". activate habitat; cd habitat-api; pip install --no-cache -r requirements.txt --progress-bar off"

# Install habitat-api.
#RUN /bin/bash -c ". activate habitat; cd habitat-api; python setup.py develop --all"
RUN /bin/bash -c ". activate habitat; cd habitat-api; pip install -e ."

# Silence habitat-sim logs
ENV GLOG_minloglevel=2
ENV MAGNUM_LOG="quiet"

RUN apt-get update && apt-get install -y --no-install-recommends net-tools && rm -rf /var/lib/apt/lists/*
