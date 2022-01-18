FROM ubuntu
RUN apt-get update -y
COPY my-nodejs-sails-bootstrap.sh my-nodejs-sails-bootstrap.sh
RUN chmod +x ./my-nodejs-sails-bootstrap.sh
#CMD ./my-nodejs-sails-bootstrap.sh
