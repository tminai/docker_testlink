FROM almalinux:8

MAINTAINER tminai

# Insall HTTPD and PHP
RUN dnf -y update && \
    dnf -y install httpd wget && \
    dnf -y install php-mysqlnd php php-gd php-mbstring php-json php-xml php-bcmath php-ldap&& \
    systemctl enable httpd.service && \
    systemctl enable php-fpm.service

# Install MySQL
RUN dnf -y install mysql-server && \
    systemctl enable mysqld.service

# Get Testlink
RUN wget -q "http://sourceforge.net/projects/testlink/files/TestLink%201.9/TestLink%201.9.19/testlink-1.9.19.tar.gz/download" -O testlink-1.9.19.tar.gz && \
    tar zxvf testlink-1.9.19.tar.gz && \
    mv -fT testlink-1.9.19 /var/www/html/testlink && \
    rm testlink-1.9.19.tar.gz

RUN echo "max_execution_time=3000" >> /etc/php.ini && \
    echo "session.gc_maxlifetime=60000" >> /etc/php.ini

RUN mkdir -p /var/testlink /var/testlink/logs /var/testlink/upload_area
RUN mkdir -p /var/run/php-fpm/

RUN chmod 777 -R /var/www/html/testlink && \
    chmod 777 -R /var/testlink/logs && \
    chmod 777 -R /var/testlink/upload_area

RUN chown -R apache:apache /var/www/html/testlink

CMD ["/sbin/init", "3"]

EXPOSE 80
