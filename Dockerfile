FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y apache2 curl
RUN apt-get install -y zip
RUN apt-get install -y unzip
ADD https://github.com/muskansingh7070/AppliedDevops-LandingPage/archive/master.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip master.zip
RUN cp -rvf master/* .
RUN rm -rf master master.zip
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]
EXPOSE 80