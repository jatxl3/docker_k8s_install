FROM ubuntu

RUN apt-get update && apt-get install -y iproute2 
RUN ip addr show
RUN pip install shadowsocks

