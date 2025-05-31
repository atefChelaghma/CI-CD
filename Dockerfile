FROM ruby:3.2

WORKDIR /app

COPY . .

RUN bundle install

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0", "-p", "4567"]

