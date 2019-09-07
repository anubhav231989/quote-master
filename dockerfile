FROM jenkins/jenkins:lts

# to install any extra package using package manager like apt-get
# you need to elevate the user permissions using 'USER' keyword

USER root
RUN apt-get update && apt-get install -y sudo 
RUN apt-get install -y tidy

USER jenkins