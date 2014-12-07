FROM ubuntu-debootstrap
MAINTAINER Stefan Baur

COPY scripts scripts

RUN chmod +x /scripts/*; mv /scripts/apache2.sh /; /scripts/setup; /scripts/cleanup -f bash sh dash su mkdir basename sed tr uname env cat tty mktemp rm grep groups ls du curl apache2 php php5 git git-diffall git-shell git-upload-pack git-cvsserver git-receive-pack git-upload-archive gitview 

WORKDIR /app

ENTRYPOINT ["/apache2.sh","-DFOREGROUND"]
EXPOSE 80

