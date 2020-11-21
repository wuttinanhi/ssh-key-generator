FROM ubuntu:latest

RUN apt update -y
RUN apt install openssh-client -y

RUN mkdir /sshkey
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 770 /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]