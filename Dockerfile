# Use the official Ruby image as base
FROM ruby:2.7.4

# Set working directory in the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port if your Ruby application uses it
EXPOSE 4567

# Command to run the application
# CMD ["ruby", "main.rb"]

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
