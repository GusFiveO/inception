FROM debian:buster

RUN apt-get update && apt-get install nginx -y && apt-get install openssl -y

RUN mkdir -p /etc/nginx/ssl

RUN openssl req \
	 -newkey rsa:2048 \
	 -x509 \
	 -days 365 -nodes \
	 -out /etc/nginx/ssl/alorain.42.fr.crt \
	 -keyout /etc/nginx/ssl/alorain.42.fr.key \
	 -subj "/CN=alorain.42.fr"

COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf

EXPOSE 443

CMD ["nginx","-g","daemon off;"]
