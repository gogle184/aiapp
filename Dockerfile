# ベースのruby
FROM ruby:3.4.0

# RailsインストールDB接続のパッケージ
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev default-mysql-client vim

RUN mkdir/aiapp

WORKDIR /aiapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

COPY . /aiapp
