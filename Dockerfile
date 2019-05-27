FROM ruby:2.6.3-stretch

# Copy application code
COPY . /application
# Change to the application's directory
WORKDIR /application

# Copy application code
COPY . /application
# Change to the application's directory
WORKDIR /application

gem install bundler:2.0.1

# Install gems
RUN bundle install --deployment --without development test
