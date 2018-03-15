FROM ruby:2.5
MAINTAINER mrafayaleem@gmail.com

RUN apt-get clean \
  && mv /var/lib/apt/lists /var/lib/apt/lists.broke \
  && mkdir -p /var/lib/apt/lists/partial

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
RUN apt-get update

RUN apt-get install -y \
    nodejs \
    python-pygments

RUN apt-get clean \
  && rm -rf /var/lib/apt/lists/

WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN bundle install

VOLUME /src
EXPOSE 4000

WORKDIR /src
ENTRYPOINT ["jekyll", "serve", "-H", "0.0.0.0"]
