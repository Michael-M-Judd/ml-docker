# ml-docker
Simple containerized docker environment for machine learning experiments

## Installation

This takes advantage of nvidia gpus. In order to use gpus on your system (linux only), you'll have to install [nvidia-docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/user-guide.html).

To build the container run:

```
sudo docker build -t mldocker:latest .
```

This will build a docker container with all the dependecies from requirements.txt (pandas, tensorflow, matplotlib, scikit-learn, etc.)

## Running the container
_Note: If you don't have an nividia gpu, just remove --runtime=nividia from the docker run commands_

### As a bash instance
```
sudo docker run --runtime=nvidia --gpus all -it -v /host/data:/data -v /host/config:/config mldocker:latest bash 
```

### With jupyter notebook
This will run jupyter notebook session at localhost:8888

```
sudo docker run --gpus all -it -p 8888:8888 --ipc=host mldocker:latest jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token= --notebook-dir='/root'
```

