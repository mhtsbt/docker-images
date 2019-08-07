JupyerLab extensions:
- https://github.com/jupyterlab/jupyterlab-git

Add a password to the container: "--NotebookApp.token=xxx"

```
NV_GPU=9 nvidia-docker run --name jl -p 8889:8888 -p 6006:6006 -d -v /data_in:/data mhtsbt/jupyter-gpu --NotebookApp.token=xxx
```