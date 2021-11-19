FROM haproxy

ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN https://github.com/erdnando/coltrans-reverse-proxy-ha.git /usr/local/etc/haproxy

WORKDIR /usr/local/etc/haproxy

#COPY haproxy.cfg /usr/local/etc/haproxy

USER root
RUN mkdir -p /run/haproxy/
#docker rmi image erdnando/coltrans-reverse-proxy-ha
#build
#docker build -t erdnando/coltrans-reverse-proxy-ha .
#local test
#docker run -it -p 8080:80 --name coltrans-reverse-proxy-ha erdnando/coltrans-reverse-proxy-ha:1.0
#push
#docker push erdnando/coltrans-reverse-proxy-ha:1.0

#https://tsh.io/blog/how-to-scale-websocket/


EXPOSE 80:80