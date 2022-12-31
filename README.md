[![CircleCI](https://circleci.com/gh/kien-ndt/udacity-project4_udacity_aws_devops.svg?style=svg)]


## Setup the Environment (run without docker)

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies
* Run cmd: `python app.py`

## Setup the Environment (run with Docker)
* Install docker
* Run bash: './run_docker.sh'

## Setup the Environment (run with Kubenetes)
* Install docker
* Install kubectl
* Connect kubectl with Kubenetes cluster
* Run bash: './run_kubernetes.sh'


### Sh file explain
1. run_docker.sh: build docker image from Dockerfile, forward port 8000 from host to port 80 of container
2. upload_docker.sh: change tag docker image and push image to dockerhub
3. run_kubernetes.sh: build kubernetes pods with kubectl from docker image, forward port 8000 from host to port 80 of pod.
4. make_prediction.sh: get prediction result from flask app server

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
