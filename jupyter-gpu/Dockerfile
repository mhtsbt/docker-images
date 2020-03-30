FROM jupyter/scipy-notebook

USER root
<<<<<<< HEAD
RUN python -m pip --no-cache install torch tensorboard
=======
RUN python -m pip --no-cache install torch tensorboard tensorflow-gpu
>>>>>>> 19e38e283b9c5c671b31a2c3b3a9ad5fa1efaece

RUN apt-get update && apt install -y graphviz libgraphviz-dev libcgraph6 git ssh htop && rm -rf /var/lib/apt/lists/*

RUN jupyter labextension install @jupyterlab/toc
RUN jupyter lab build

RUN git config --global user.email "matthias.hutsebaut@gmail.com"
RUN git config --global user.name "mhtsbt"
RUN git config --global credential.helper 'cache --timeout 28800'
RUN git config --global core.editor "nano"
