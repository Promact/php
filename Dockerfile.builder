FROM ubuntu:18.04

RUN apt-get update -y
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install software-properties-common build-essential unzip -y && add-apt-repository ppa:ondrej/php -y
RUN apt-get install -y \
    curl \
    php7.2 \
    php7.2-common \
    php7.2-cli \
    php7.2-gd \
    php7.2-mysql \
    php7.2-curl \
    php7.2-intl \
    php7.2-mbstring \
    php7.2-bcmath \
    php7.2-imap \
    php7.2-xml \
    php7.2-zip \
    php7.2-cli \
    php7.2-sqlite3 \
    php7.2-msgpack \
    php7.2-pgsql \
    php7.2-soap \
    php7.2-memcached \
    php7.2-igbinary
RUN apt-get install -y libpng-dev
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -  && \
    apt-get install -y nodejs
RUN npm install -g --allow-root --unsafe-perm=true pngquant-bin
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer