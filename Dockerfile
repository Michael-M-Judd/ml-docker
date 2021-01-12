FROM tensorflow/tensorflow:2.4.0-gpu-jupyter

RUN apt-get update && \
    apt-get install -y python3-dev build-essential python3-pip && \
    /usr/bin/python3 -m pip install --upgrade pip
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .
RUN pip3 install -r requirements.txt
