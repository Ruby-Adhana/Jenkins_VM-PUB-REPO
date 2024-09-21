ARG  CODE_VERSION=latest
FROM ubuntu:${CODE_VERSION}
LABEL "author"="Ruby-adhana"
LABEL "Date"="2022-03-07"
RUN apt update -y
RUN apt install apache2 -y
RUN apt install systemctl -y
EXPOSE 80
WORKDIR /tmp    
