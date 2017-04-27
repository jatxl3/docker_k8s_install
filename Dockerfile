FROM ubuntu

RUN apt-get install -y net-tools
RUN ip addr show
RUN pip install shadowsocks

