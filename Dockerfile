FROM python:3.10-slim

RUN apt-get update && apt-get upgrade -y && apt-get install -y libgl-dev libglib2.0-0

# RUN apt-get install build-essential -y
#  libsm6 libxrender1 libxext6

COPY . /yolo7/

RUN python -m pip install -U pip

RUN pip install -r /yolo7/wsl_yolo7_requirements.txt

WORKDIR /yolo7
