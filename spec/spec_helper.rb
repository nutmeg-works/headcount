ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'mongoid-rspec'

require 'factory_bot'
require 'database_cleaner'

require 'pry'

require_relative '../config/boot'

Dir['./spec/factories/**/*.rb'].sort.each { |f| require f }

RSpec.configure do |config|
  config.include Mongoid::Matchers
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
