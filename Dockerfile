# ATS Version 0.3.2
FROM ubuntu:16.04
MAINTAINER Ryan King "hello@ryanking.com"

# Do everything in an ATS directory
WORKDIR /MyATS

# Install Dependencies
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y git
RUN apt-get install -y build-essential
RUN apt-get install -y libgmp-dev libgc-dev

#

RUN echo 'Welcome to RyanTKing/ats!'
EXPOSE 80
