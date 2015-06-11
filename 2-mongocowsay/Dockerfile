FROM ubuntu
RUN apt-get update -qqy
RUN apt-get install -qqy cowsay
RUN apt-get install -qqy mongodb-clients
ADD mongocowsay.sh /bin/
CMD /bin/mongocowsay.sh

