FROM  ubuntu:latest
RUN  apt-get update && apt-get -y install  apache2 vim curl telnet traceroute dnsutils
RUN  mv /var/www/html/index.html /var/www/html/index.html.old
COPY /pj-integrador /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]]
