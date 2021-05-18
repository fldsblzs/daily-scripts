#! /bin/sh

minikube delete
sudo rm -rf /usr/local/bin/minikube
sudo curl -Lo minikube https://github.com/kubernetes/minikube/releases/download/v1.20.0/minikube-linux-amd64
sudo chmod +x minikube
sudo cp minikube /usr/local/bin/
sudo rm minikube
minikube start