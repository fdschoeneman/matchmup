ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)
Dir[File.expand_path('test/support/*.rb')].each { |file| require file }

require "rails/test_help"

include TestMatchers

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
end


