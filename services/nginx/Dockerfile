FROM debian:buster

#Making the container listenning on port 443
EXPOSE 443

#Update the container
RUN apt-get -y update

#Install nginx on the container
RUN apt-get install -y nginx

#Copy the nginx config file of the webserver into the container and create symlink of it then delete the default config
COPY config/website.conf /etc/nginx/sites-available/website.conf
RUN ln -s /etc/nginx/sites-available/website.conf /etc/nginx/sites-enabled/ \
&& rm -rf /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default 

#Install openssl and generate a key to connect to the server throught https
RUN apt-get install -y openssl \
&&      openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -subj '/CN=lweglarz' \ 
        -keyout /etc/ssl/private/mywebserv.key -out /etc/ssl/certs/mywebserv.crt

#Start nginx on the foreground so the container doesn't leave and keep running
CMD ["nginx", "-g", "daemon off;"]