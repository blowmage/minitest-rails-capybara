require "minitest/rails"
# Load minitest-matchers and fix Capybara::RSpecMatchers
require "minitest-capybara"
require "capybara/rails"

class MiniTest::Rails::ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  include Capybara::RSpecMatchers
  include Capybara::DSL
end
