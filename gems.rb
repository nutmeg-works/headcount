source 'https://rubygems.org'

gem 'mongoid'

gem 'dotenv'

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'rspec'

  gem 'mongoid-rspec'

  gem 'factory_bot'
  gem 'database_cleaner'
end