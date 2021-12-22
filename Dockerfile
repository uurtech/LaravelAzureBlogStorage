FROM ubuntu:latest

RUN apt-get update -y && apt-get -y install tzdata
RUN echo "Europe/Amsterdam" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get install -y openssl zip unzip git
RUN apt-get install apt-transport-https ca-certificates curl software-properties-common -y
RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client libmagickwand-dev \
    && apt install -y php7.4 php7.4-fpm php7.4-cli php7.4-gd php7.4-mysql \
    php7.4-imap php-memcached php7.4-mbstring php7.4-xml php7.4-curl \
    php7.4-sqlite3 php7.4-zip php7.4-odbc nginx php7.4-mbstring php7.4-xml php7.4-bcmath supervisor lsof

RUN apt install composer -y

ENTRYPOINT [ "tail", "-f", "/dev/null" ]