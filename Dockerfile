FROM ubuntu:bionic-20181018

RUN apt -y update && apt -y install dnsutils wget curl tcpdump iptables iproute2 iputils-ping
