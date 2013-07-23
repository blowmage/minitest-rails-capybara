require "minitest/rails"
# Load minitest-capybara and minitest-matchers
require "minitest-capybara"
require "capybara/rails"
require "minitest/metadata"

module Capybara
  module Rails
    class TestCase < ::ActiveSupport::TestCase
      include ::Rails.application.routes.url_helpers
      include Capybara::DSL
      include Capybara::Assertions
      include MiniTest::Metadata

      # Register by name
      register_spec_type(/(Feature|Browser)( ?Test)?\z/i, self)

      # Enable Capybara's spec DSL
      class << self
        alias :background :before
        alias :scenario   :it
        alias :given      :let
      end

      # Configure the driver using metadata
      before do
        if metadata[:js] == true
          Capybara.current_driver = Capybara.javascript_driver
        end
      end

      after do
        Capybara.current_driver = Capybara.default_driver
      end
    end
  end
end

module Kernel # :nodoc:
  alias :feature :describe
end