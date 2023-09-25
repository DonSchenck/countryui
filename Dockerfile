FROM registry.access.redhat.com/ubi9/ruby-30

#RUN apt-get update && apt-get install -y npm && npm install -g yarn
USER root

COPY . /app
WORKDIR /app

RUN bundle install

CMD rails s -b 0.0.0.0