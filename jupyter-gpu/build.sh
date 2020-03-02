#!/bin/bash

docker build -t mhtsbt/jupyter-gpu .
docker push mhtsbt/jupyter-gpu
