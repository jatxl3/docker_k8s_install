FROM ubuntu:16.04

RUN apt-get update && apt-get install -y apt-transport-https curl && \ 
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list 

RUN apt-get update &&  \
    apt-get install -y docker.io && \
    apt-get install -y kubelet kubeadm kubectl kubernetes-cni

