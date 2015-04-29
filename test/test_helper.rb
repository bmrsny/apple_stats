ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'database_cleaner'

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end

class Minitest::Spec
  around do |tests|
    DatabaseCleaner.cleaning(&tests)
  end
end
DatabaseCleaner[:sequel].strategy = :transaction
