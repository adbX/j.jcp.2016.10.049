FROM ubuntu:16.04

WORKDIR /app
ADD . /app

RUN \
  apt-get update \
  && apt-get install -y build-essential wget curl vim software-properties-common \
  && apt-get install -y parallel

 RUN \
  add-apt-repository ppa:deadsnakes/ppa \
  && apt-get update \
  && apt-get install -y python3.7 \
  && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
  && python3.7 get-pip.py \
  && pip3 install matplotlib

ENTRYPOINT /bin/bash
