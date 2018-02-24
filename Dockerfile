FROM ruby:2.5.0
MAINTAINER Guillaume FAURE-DUMONT
# RUN apt-get update -qq && apt-get install -y build-essential
RUN echo 'gem: --no-document' > /root/.gemrc

RUN mkdir /sinatra

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /sinatra
WORKDIR /sinatra
