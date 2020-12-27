FROM ubuntu:latest

RUN apt update -y
RUN apt install openssh-client -y

ENV KEY_FORMAT=PEM
ENV TYPE=rsa
ENV PASSPHRASE=default
ENV COMMENT=default
ENV FILENAME=/sshkey/id_rsa

RUN mkdir /sshkey
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 770 /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]