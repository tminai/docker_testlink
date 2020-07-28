FROM centos:8

MAINTAINER tminai

RUN dnf -y update && \
    dnf -y install httpd wget && \
    dnf -y install php-mysqlnd php php-gd php-mbstring && \
    systemctl enable httpd.service && \
    systemctl enable php-fpm.service

RUN dnf -y install mysql-server && \
    systemctl enable mysqld.service


RUN wget -q "http://sourceforge.net/projects/testlink/files/TestLink%201.9/TestLink%201.9.20/testlink-1.9.20.tar.gz/download" -O testlink-1.9.20.tar.gz && \
    tar zxvf testlink-1.9.20.tar.gz && \
    mv testlink-1.9.20 /var/www/html/testlink && \
    rm testlink-1.9.20.tar.gz

RUN echo "max_execution_time=3000" >> /etc/php.ini && \
    echo "session.gc_maxlifetime=60000" >> /etc/php.ini

RUN mkdir -p /var/testlink /var/testlink/logs /var/testlink/upload_area
RUN mkdir -p /var/run/php-fpm/

RUN chmod 777 -R /var/www/html/testlink && \
    chmod 777 -R /var/testlink/logs && \
    chmod 777 -R /var/testlink/upload_area

RUN chown -R apache:apache /var/www/html/testlink

ADD ./init/init.sh /opt
RUN chmod 755 /opt/init.sh

CMD ["/sbin/init", "3"]

EXPOSE 80
