require 'mongoid'

Mongoid.load!(File.expand_path('../../../config/mongoid.yml', __FILE__))

module Headcount
  module Models
  end
end
