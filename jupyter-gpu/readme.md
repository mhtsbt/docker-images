JupyerLab extensions:
- https://github.com/jupyterlab/jupyterlab-git

Add a password to the container: "--NotebookApp.token=xxx"

```
docker run --name jl -p 8888:8888 -d -v /data_in:/data mhtsbt/jupyter-gpu --NotebookApp.token=xxx
```