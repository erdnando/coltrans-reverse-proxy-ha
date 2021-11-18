# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM haproxy


COPY haproxy.cfg /usr/local/etc/haproxy

USER root
RUN mkdir -p /run/haproxy/
#docker rmi image erdnando/front-fintech
#build
#docker build -t erdnando/front-fintech:latest .
#local test
#docker run -it -p 8080:80 --name web-vue erdnando/front-fintech
#push
#docker push erdnando/front-fintech:latest


#https://tsh.io/blog/how-to-scale-websocket/


EXPOSE 80:80