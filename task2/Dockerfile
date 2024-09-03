FROM centos:latest

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install -y mysql-server

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Expose the default MySQL port
EXPOSE 3306

# Start MySQL when the container launches
CMD ["mysqld_safe"]

# Create a new directory for the MySQL data
RUN mkdir -p /var/lib/mysql

# Set the ownership of the MySQL data directory
RUN chown -R mysql:mysql /var/lib/mysql

# Start the MySQL service when the container launches
CMD ["mysqld_safe", "-g", "daemon off;"]


