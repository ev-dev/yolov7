FROM mambaorg/micromamba:1.0.0

COPY --chown=$MAMBA_USER:$MAMBA_USER env.yaml /tmp/env.yaml

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y libgl-dev libglib2.0-0

RUN micromamba install -y -n base -f /tmp/env.yaml && micromamba clean --all --yes

# RUN micromamba install --yes --file /tmp/env.yaml && \
    # micromamba clean --all --yes
ARG MAMBA_DOCKERFILE_ACTIVATE=1

# RUN micromamba activate base

RUN python -V

RUN python -m pip install -U pip

COPY . /yolo7/

RUN pip install -r /yolo7/wsl_yolo7_requirements.txt

WORKDIR /yolo7
