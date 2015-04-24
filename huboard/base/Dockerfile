FROM ubuntu:12.04
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

# Run upgrades
# RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

# Install basic packages
RUN apt-get -qq -y install git curl build-essential

# Install Ruby 2.0
RUN apt-get -qq -y install python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get -qq -y install ruby2.2 ruby2.2-dev
RUN gem install bundler --no-ri --no-rdoc

# Install packages for installing Huboard 
RUN apt-get -qq -y install couchdb memcached nodejs
RUN apt-get clean
RUN gem install foreman

# Install Huboard
RUN apt-get -qq -y install libssl-dev
RUN git clone -b exp/ruby-2.2.2 https://github.com/ahmadnazir/huboard.git /app
RUN cd /app; bundle install;
