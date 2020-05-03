FROM ruby:2.7.1
# TODO: find libmysqlclient-dev for postgres
RUN apt-get update -qq && apt-get install -y build-essential postgresql-client
RUN mkdir /blog
WORKDIR /blog
ADD Gemfile /blog/Gemfile
ADD Gemfile.lock /blog/Gemfile.lock
RUN bundle install
ADD . /blog