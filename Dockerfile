FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential

RUN mkdir /rom-sample-app
WORKDIR /rom-sample-app
COPY Gemfile /rom-sample-app/Gemfile
COPY Gemfile.lock /rom-sample-app/Gemfile.lock
RUN bundle install
COPY . /rom-sample-app