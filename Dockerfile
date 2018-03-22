FROM alpine:3.7
RUN echo -e 'https://mirrors.aliyun.com/alpine/v3.7/main/\nhttps://mirrors.aliyun.com/alpine/v3.7/community/' > /etc/apk/repositories && \
    apk update && apk add build-base tzdata curl wget apache2 \
    php7-apache2 php7-bz2 php7-cli php7-ctype php7-curl php7-dom php7-fileinfo php7-gd php7-gmp php7-iconv php7-json php7-mbstring php7-mcrypt php7-mysqli php7-mysqlnd php7-opcache php7-openssl php7-pdo php7-pdo_mysql php7-pdo_sqlite php7-phar php7-session php7-soap php7-sqlite3 php7-sockets php7-xdebug php7-xml php7-xmlreader php7-xmlwriter php7-zip php7-zlib \
    cp -r -f /usr/share/zoneinfo/Asia/Chongqing /etc/localtime && mkdir /run/apache2 && \
    ln -s /work/conf/zl_httpd.conf /etc/apache2/conf.d && \
    ln -s /work/conf/zl_php.ini /etc/php7/conf.d/
