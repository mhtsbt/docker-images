FROM mhtsbt/pytorch

EXPOSE 8888
EXPOSE 6006

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y curl software-properties-common
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -


RUN apt-get install -y gcc gfortran python-dev wget libpng-dev nodejs zsh

RUN pip install --upgrade pip
RUN pip install jupyter numpy matplotlib pandas tensorboard tensorflow-gpu

RUN pip install jupyterlab

RUN python -m jupyter labextension install @jupyterlab/git
RUN pip install jupyterlab-git
RUN python -m jupyter serverextension enable --py jupyterlab_git

ENTRYPOINT [ "python", "-m", "jupyter", "lab","--ip=0.0.0.0","--allow-root"]
