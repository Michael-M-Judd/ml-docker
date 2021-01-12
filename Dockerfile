FROM tensorflow/tensorflow:2.2.2-gpu-py3-jupyter

RUN apt-get update && apt-get install -y python3-dev build-essential python3-pip
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .
RUN pip3 install -r requirements.txt
