FROM ubuntu:18.04

RUN apt-get update -y
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install software-properties-common -y && add-apt-repository ppa:ondrej/php -y
RUN apt-get install -y \
    curl \
    php7.3 \
    php7.3-common \
    php7.3-cli \
    php7.3-gd \
    php7.3-mysql \
    php7.3-curl \
    php7.3-intl \
    php7.3-mbstring \
    php7.3-bcmath \
    php7.3-imap \
    php7.3-xml \
    php7.3-zip \
    php7.3-cli \
    php7.3-sqlite3 \
    php7.3-msgpack \
    php7.3-pgsql \
    php7.3-soap \
    php7.3-memcached \
    php7.3-igbinary \
    nodejs \
    npm \
    libpng-dev
RUN npm install -g pngquant-bin
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer