<include a CircleCI status badge, here>

## Project Overview
 
Deploy a containerized Python flask app, which is a machine learning microservice that serves out predictions (inference) about housing prices through API calls. The application uses pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Use Kubernetes to manage the containerized application.

### Project Tasks

* Test  project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

---

## Setup the Environment

* Create a virtual environment with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Below shows creation and activation of a virtual environment called 'devops'
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```
* Run `make install` to install the necessary dependencies. Note: Many project's dependencies are listed in requirements.txt file.
* Use Docker to build and upload a containerized application. Verify you have docker installed by running docker --version.
* Ensure  hadolint is installed
```bash
# How I installed hadolint for linux:
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64
```
* Type: make lint to run lint checks on the project code
* Install minikube
```bash
# How I installed minikube for Linux:
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start
```
### Running `app.py` and 

1. Standalone:  `python app.py` - app.py contains the web app built using flask framework.
2. Run in Docker:  `./run_docker.sh` - contains the script to build docker image and run the app in docker.
3. Run `./make_prediction.sh` - contains script for sending some input data to your containerized application to give a predicted value for the house price.
4. Run `./upload_docker.sh` - Uploads image to docker
5. Run in Kubernetes:  `./run_kubernetes.sh` script that deploys app with Kubernetes.

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
