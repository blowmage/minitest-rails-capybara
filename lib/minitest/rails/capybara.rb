require "minitest/rails"
require "capybara/rails"

class Minitest::Rails::Capybara
  VERSION = '0.0.1'
end

class MiniTest::Rails::ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  include Capybara::DSL
end