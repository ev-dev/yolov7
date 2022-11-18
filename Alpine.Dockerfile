FROM python:3.10-alpine

RUN apk update --no-cache && apk upgrade --no-cache

RUN apk add --no-cache libglibutil-dev gcc openblas openblas-dev blas blas-dev gsl lapack lapack-dev 
#opencv opencv-dev py3-opencv opencv-dbg

COPY . /yolo7/

RUN python -m pip install -U pip

RUN pip install -r /yolo7/wsl_yolo7_requirements.txt
