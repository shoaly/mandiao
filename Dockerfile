FROM nginx:1.11

ADD  default.conf      /etc/nginx/conf.d/default.conf
#ADD  sites-enabled/*    /etc/nginx/conf.d/