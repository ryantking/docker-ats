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
RUN apt-get install -y libgmp-dev libgc-dev libjson-c-dev

# Get the ATS2 and ATS2-Contrib
RUN git clone "git://git.code.sf.net/p/ats2-lang/code" ATS2
RUN git clone "git://git.code.sf.net/p/ats2-lang-contrib/code" ATS2-contrib

# Setup Environment Variables
ENV GCC="gcc"
ENV PATSHOME="/MyATS/ATS2"
ENV PATSHOMECONTRIB="/MyATS/ATS2-Contrib"
ENV PATH="/MyATS/ATS2/bin:${PATH}"

# For testing
RUN pwd
RUN ls
RUN echo $PATH

RUN echo 'Welcome to RyanTKing/ats!'
