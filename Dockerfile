FROM jatxl3/ubuntu:latest

RUN sed -i -e '/daemon/'d -e '/start.*kuberctl/'d /var/lib/dpkg/info/kubelet.postinst
RUN apt-get update && apt-get install -y kubectl kubernetes-cni kubeadm 


