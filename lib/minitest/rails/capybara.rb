require "minitest/rails"
# Load minitest-matchers and fix Capybara::RSpecMatchers
require "minitest-capybara"
require "capybara/rails"

module Capybara
  module Rails
    class TestCase < ::ActiveSupport::TestCase
      include ::Rails.application.routes.url_helpers
      include Capybara::RSpecMatchers
      include Capybara::DSL

      # Register by name
      register_spec_type(/(Feature|Browser)( ?Test)?\z/i, self)
    end
  end
end
