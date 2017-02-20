# ATS Version 0.3.2
FROM ubuntu:16.04
MAINTAINER Ryan King "hello@ryanking.com"

WORKDIR /MyATS
RUN apt-get update
RUN apt-get build-essential git gcc libgmp-dev libgc-dev
RUN echo 'Welcome to RyanTKing/ats!'
EXPOSE 80
