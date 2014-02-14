FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx-extras
RUN rm -v /etc/nginx/sites-available/default
ADD site.conf /etc/nginx/sites-available/default
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
EXPOSE 4000
