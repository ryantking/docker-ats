# ATS Version 0.3.2
FROM ubuntu:16.04
MAINTAINER Ryan King "hello@ryanking.com"

# Do everything in an ATS directory
WORKDIR /MyATS

# Install Dependencies
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y build-essential
RUN apt-get install -y libgmp-dev libgc-dev libjson-c-dev

# Get the ATS2 and ATS2-Contrib
RUN git clone "git://git.code.sf.net/p/ats2-lang/code" ATS2
RUN git clone "git://git.code.sf.net/p/ats2-lang-contrib/code" ATS2-contrib

# Setup Environment Variables
RUN export GCC=gcc
RUN export PATSHOME=${PWD}/ATS2
RUN export PATSHOMECONTRIB=${PWD}/ATS2-Contrib
RUN export PATH=${PATSHOME}/bin:${PATH}

# Store the Env Variables in the bashrc
RUN echo "export PATSHOME=/MyATS/ATS2" >> ~/.bashrc
RUN echo "export PATSHOMECONTRIB=/MyATS/ATS2-Contrib" >> ~/.bashrc
RUN echo "export PATH=${PATSHOME}/bin:${PATH}" >> ~/.bashrc

# For testing
RUN pwd
RUN ls
RUN cat ~/.bashrc
RUN . ~/.bashrc
RUN echo ${PATH}

RUN echo 'Welcome to RyanTKing/ats!'
