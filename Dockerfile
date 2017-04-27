FROM ubuntu

RUN apt-get update && apt-get install -y iproute2 pip 
RUN pip install shadowsocks
RUN ip addr show

