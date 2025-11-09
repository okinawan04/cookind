FROM ruby:3.3

RUN apt-get update -y && apt-get install -y \
    build-essential \
    nodejs \
    npm \
    default-mysql-client \
    libmariadb-dev \
    ruby-dev \
    libgmp-dev \
  && rm -rf /var/lib/apt/lists/*

RUN npm install --global yarn

WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install || true

COPY . .

EXPOSE 3000
CMD ["bash","-lc","bundle exec rails s -b 0.0.0.0 -p 3000"]
