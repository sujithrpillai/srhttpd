FROM centos:latest
ENV RUNUSER apache
RUN yum install -y httpd
EXPOSE 80
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY index.html /var/www/html/index.html
RUN chmod +x /usr/local/bin/entrypoint.sh
CMD ["/usr/local/bin/entrypoint.sh"]
