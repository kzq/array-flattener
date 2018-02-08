# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '2.4.0'

group :development do
  # Guard::RSpec automatically run your specs
  gem 'guard-rspec'
end

group :test, :development do
  # testing farmework for Ruby
  gem 'rspec'
  # RSpec extension gem for attribute matching
  gem 'rspec-its', '1.2.0'
  # Combine pry with byebug
  gem 'pry-byebug'
  # Ruby static code analyzer
  gem 'rubocop', require: false
end
