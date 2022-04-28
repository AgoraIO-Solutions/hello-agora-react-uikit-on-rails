FROM ruby:3.0.2-slim
RUN apt-get update -qq && apt-get install -y nodejs npm libsqlite3-dev esbuild
RUN npm install -g yarn
RUN gem update --system

# use a global path instead of vendor
ENV GEM_HOME="/usr/local/bundle"
ENV BUNDLE_PATH="$GEM_HOME"
ENV BUNDLE_SILENCE_ROOT_WARNING=1
ENV BUNDLE_APP_CONFIG="$GEM_HOME"
ENV PATH="$GEM_HOME/bin:$BUNDLE_PATH/gems/bin:${PATH}"
ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

# copy the source
WORKDIR /app
COPY . /app
RUN rm -f tmp/pids/server.pid
RUN bundle install --without development test
RUN npm i
RUN yarn install
RUN yarn build:prod
RUN bin/rails assets:precompile

EXPOSE 3000

# build and start
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
