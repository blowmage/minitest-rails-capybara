require "minitest/rails"
require "capybara/rails"

class MiniTest::Rails::ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  include Capybara::DSL
end