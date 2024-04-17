FROM mysql:8.0.33
ENV MYSQL_USER=root
ENV MYSQL_ROOT_PASSWORD=teteo
ENV MYSQL_DATABASE=dbInfnet
RUN /etc/init.d/mysql start \
    && mysql -u root --password='teteo' -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'teteo';"