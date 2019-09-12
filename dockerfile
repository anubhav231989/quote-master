FROM jenkins/jenkins:lts
MAINTAINER anubhav sidhu <anubhav231989@gmail.com>

# prevents ubuntu package manager error.
ENV TERM=xterm-256color

# to install any extra package using package manager like apt-get
# you need to elevate the user permissions using 'USER' keyword

USER root

# passing apt-get arguments via -o flag 
# not to install the suggested and recommended packages.
# This keeps our docker images to a minimum speeding up build time and reducing image size.
RUN apt-get update && \
    apt-get install -y \
    -o APT::Install-Recommends=false -o APT::Install-Suggests=false \
    sudo 

RUN apt-get install -y tidy

USER jenkins