FROM python:3.7-alpine

RUN apk --no-cache --update-cache add gcc gfortran python-dev build-base wget freetype-dev libpng-dev openblas-dev

RUN pip install --upgrade pip
RUN pip install jupyter numpy matplotlib pandas

ENTRYPOINT [ "python", "-m", "jupyter", "notebook" ]