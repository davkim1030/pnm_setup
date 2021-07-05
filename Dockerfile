FROM	ubuntu:18.04

ENV		DEBIAN_FRONTEND="nointeractive"

RUN		apt update && apt -y upgrade && \
		apt -yq install \
		nginx \
		vim \
		php7.2-fpm \
		mariadb-server \
		php-mysql

LABEL	maintainer="davkim1030@gmail.com"

EXPOSE	80

COPY	srcs/ /tmp/

CMD		["/bin/bash", "/tmp/init.sh"]
