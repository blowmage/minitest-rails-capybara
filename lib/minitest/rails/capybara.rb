require "minitest/rails"
# Load minitest-capybara and minitest-matchers
require "minitest-capybara"
require "capybara/rails"
require "minitest/metadata"

module Capybara
  module Rails
    class Helpers # :nodoc:
      include ::Rails.application.routes.url_helpers
      include ::Rails.application.routes.mounted_helpers if ::Rails.application.routes.respond_to? :mounted_helpers
      def initialize
        self.default_url_options = ::Rails.application.routes.default_url_options
        self.default_url_options[:host] ||= "test.local"
      end
    end
    class TestCase < ::ActiveSupport::TestCase
      include Capybara::DSL
      include Capybara::Assertions
      include Minitest::Metadata

      # Register by name
      register_spec_type(/(Feature|Browser)( ?Test)?\z/i, self)
      register_spec_type(self) do |desc, *addl|
        addl.include? :capybara
      end

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
        Capybara.reset_sessions!
        Capybara.use_default_driver
      end

      # Defer rails helpers methods to a different object
      def __rails_helpers__ # :nodoc:
        @__rails_helpers__ ||= ::Capybara::Rails::Helpers.new
      end
      def respond_to?(method, include_private = false) # :nodoc:
        __rails_helpers__.respond_to?(method, include_private) || super
      end
      def method_missing(sym, *args, &block) # :nodoc:
        if __rails_helpers__.respond_to?(sym, true)
          __rails_helpers__.__send__(sym, *args, &block)
        else
          super
        end
      end
    end
  end
end

module Kernel # :nodoc:
  def feature desc, &blk
    describe "#{desc} Feature Test", &blk
  end
end

module Capybara
  module Assertions
    ##
    # Assertion that there is button
    #
    # see Capybara::Assertions#refute_button
    # see Capybara::Assertions#assert_no_button
    # see Capybara::expectations#must_have_button
    # see Capybara::expectations#wont_have_button
    # :method: assert_button

    ##
    # Assertion that there is no button
    #
    # see Capybara::Assertions#assert_button
    # see Capybara::expectations#must_have_button
    # see Capybara::expectations#wont_have_button
    # :method: refute_button
    # :alias: assert_no_button


    ##
    # Assertion that there is checked_field
    #
    # see Capybara::Assertions#refute_checked_field
    # see Capybara::Assertions#assert_no_checked_field
    # see Capybara::expectations#must_have_checked_field
    # see Capybara::expectations#wont_have_checked_field
    # :method: assert_checked_field

    ##
    # Assertion that there is no checked_field
    #
    # see Capybara::Assertions#assert_checked_field
    # see Capybara::expectations#must_have_checked_field
    # see Capybara::expectations#wont_have_checked_field
    # :method: refute_checked_field
    # :alias: assert_no_checked_field


    ##
    # Assertion that there is content
    #
    # see Capybara::Assertions#refute_content
    # see Capybara::Assertions#assert_no_content
    # see Capybara::expectations#must_have_content
    # see Capybara::expectations#wont_have_content
    # :method: assert_content

    ##
    # Assertion that there is no content
    #
    # see Capybara::Assertions#assert_content
    # see Capybara::expectations#must_have_content
    # see Capybara::expectations#wont_have_content
    # :method: refute_content
    # :alias: assert_no_content


    ##
    # Assertion that there is css
    #
    # see Capybara::Assertions#refute_css
    # see Capybara::Assertions#assert_no_css
    # see Capybara::expectations#must_have_css
    # see Capybara::expectations#wont_have_css
    # :method: assert_css

    ##
    # Assertion that there is no css
    #
    # see Capybara::Assertions#assert_css
    # see Capybara::expectations#must_have_css
    # see Capybara::expectations#wont_have_css
    # :method: refute_css
    # :alias: assert_no_css


    ##
    # Assertion that there is field
    #
    # see Capybara::Assertions#refute_field
    # see Capybara::Assertions#assert_no_field
    # see Capybara::expectations#must_have_field
    # see Capybara::expectations#wont_have_field
    # :method: assert_field

    ##
    # Assertion that there is no field
    #
    # see Capybara::Assertions#assert_field
    # see Capybara::expectations#must_have_field
    # see Capybara::expectations#wont_have_field
    # :method: refute_field
    # :alias: assert_no_field


    ##
    # Assertion that there is link
    #
    # see Capybara::Assertions#refute_link
    # see Capybara::Assertions#assert_no_link
    # see Capybara::expectations#must_have_link
    # see Capybara::expectations#wont_have_link
    # :method: assert_link

    ##
    # Assertion that there is no link
    #
    # see Capybara::Assertions#assert_link
    # see Capybara::expectations#must_have_link
    # see Capybara::expectations#wont_have_link
    # :method: refute_link
    # :alias: assert_no_link


    ##
    # Assertion that there is select
    #
    # see Capybara::Assertions#refute_select
    # see Capybara::Assertions#assert_no_select
    # see Capybara::expectations#must_have_select
    # see Capybara::expectations#wont_have_select
    # :method: assert_select

    ##
    # Assertion that there is no select
    #
    # see Capybara::Assertions#assert_select
    # see Capybara::expectations#must_have_select
    # see Capybara::expectations#wont_have_select
    # :method: refute_select
    # :alias: assert_no_select


    ##
    # Assertion that there is selector
    #
    # see Capybara::Assertions#refute_selector
    # see Capybara::Assertions#assert_no_selector
    # see Capybara::expectations#must_have_selector
    # see Capybara::expectations#wont_have_selector
    # :method: assert_selector

    ##
    # Assertion that there is no selector
    #
    # see Capybara::Assertions#assert_selector
    # see Capybara::expectations#must_have_selector
    # see Capybara::expectations#wont_have_selector
    # :method: refute_selector
    # :alias: assert_no_selector


    ##
    # Assertion that there is table
    #
    # see Capybara::Assertions#refute_table
    # see Capybara::Assertions#assert_no_table
    # see Capybara::expectations#must_have_table
    # see Capybara::expectations#wont_have_table
    # :method: assert_table

    ##
    # Assertion that there is no table
    #
    # see Capybara::Assertions#assert_table
    # see Capybara::expectations#must_have_table
    # see Capybara::expectations#wont_have_table
    # :method: refute_table
    # :alias: assert_no_table


    ##
    # Assertion that there is text
    #
    # see Capybara::Assertions#refute_text
    # see Capybara::Assertions#assert_no_text
    # see Capybara::expectations#must_have_text
    # see Capybara::expectations#wont_have_text
    # :method: assert_text

    ##
    # Assertion that there is no text
    #
    # see Capybara::Assertions#assert_text
    # see Capybara::expectations#must_have_text
    # see Capybara::expectations#wont_have_text
    # :method: refute_text
    # :alias: assert_no_text


    ##
    # Assertion that there is unchecked_field
    #
    # see Capybara::Assertions#refute_unchecked_field
    # see Capybara::Assertions#assert_no_unchecked_field
    # see Capybara::expectations#must_have_unchecked_field
    # see Capybara::expectations#wont_have_unchecked_field
    # :method: assert_unchecked_field

    ##
    # Assertion that there is no unchecked_field
    #
    # see Capybara::Assertions#assert_unchecked_field
    # see Capybara::expectations#must_have_unchecked_field
    # see Capybara::expectations#wont_have_unchecked_field
    # :method: refute_unchecked_field
    # :alias: assert_no_unchecked_field


    ##
    # Assertion that there is xpath
    #
    # see Capybara::Assertions#refute_xpath
    # see Capybara::Assertions#assert_no_xpath
    # see Capybara::expectations#must_have_xpath
    # see Capybara::expectations#wont_have_xpath
    # :method: assert_xpath

    ##
    # Assertion that there is no xpath
    #
    # see Capybara::Assertions#assert_xpath
    # see Capybara::expectations#must_have_xpath
    # see Capybara::expectations#wont_have_xpath
    # :method: refute_xpath
    # :alias: assert_no_xpath
  end

  module Expectations
    ##
    # Expectation that there is button
    #
    # see Capybara::Expectations#wont_have_button
    # see Capybara::Assertions#assert_button
    # see Capybara::Assertions#refute_button
    # see Capybara::Assertions#assert_no_button
    # :method: must_have_button

    ##
    # Expectation that there is no button
    #
    # see Capybara::Expectations#must_have_button
    # see Capybara::Assertions#assert_button
    # see Capybara::Assertions#refute_button
    # see Capybara::Assertions#assert_no_button
    # :method: wont_have_button


    ##
    # Expectation that there is checked_field
    #
    # see Capybara::Expectations#wont_have_checked_field
    # see Capybara::Assertions#assert_checked_field
    # see Capybara::Assertions#refute_checked_field
    # see Capybara::Assertions#assert_no_checked_field
    # :method: must_have_checked_field

    ##
    # Expectation that there is no checked_field
    #
    # see Capybara::Expectations#must_have_checked_field
    # see Capybara::Assertions#assert_checked_field
    # see Capybara::Assertions#refute_checked_field
    # see Capybara::Assertions#assert_no_checked_field
    # :method: wont_have_checked_field


    ##
    # Expectation that there is content
    #
    # see Capybara::Expectations#wont_have_content
    # see Capybara::Assertions#assert_content
    # see Capybara::Assertions#refute_content
    # see Capybara::Assertions#assert_no_content
    # :method: must_have_content

    ##
    # Expectation that there is no content
    #
    # see Capybara::Expectations#must_have_content
    # see Capybara::Assertions#assert_content
    # see Capybara::Assertions#refute_content
    # see Capybara::Assertions#assert_no_content
    # :method: wont_have_content


    ##
    # Expectation that there is css
    #
    # see Capybara::Expectations#wont_have_css
    # see Capybara::Assertions#assert_css
    # see Capybara::Assertions#refute_css
    # see Capybara::Assertions#assert_no_css
    # :method: must_have_css

    ##
    # Expectation that there is no css
    #
    # see Capybara::Expectations#must_have_css
    # see Capybara::Assertions#assert_css
    # see Capybara::Assertions#refute_css
    # see Capybara::Assertions#assert_no_css
    # :method: wont_have_css


    ##
    # Expectation that there is field
    #
    # see Capybara::Expectations#wont_have_field
    # see Capybara::Assertions#assert_field
    # see Capybara::Assertions#refute_field
    # see Capybara::Assertions#assert_no_field
    # :method: must_have_field

    ##
    # Expectation that there is no field
    #
    # see Capybara::Expectations#must_have_field
    # see Capybara::Assertions#assert_field
    # see Capybara::Assertions#refute_field
    # see Capybara::Assertions#assert_no_field
    # :method: wont_have_field


    ##
    # Expectation that there is link
    #
    # see Capybara::Expectations#wont_have_link
    # see Capybara::Assertions#assert_link
    # see Capybara::Assertions#refute_link
    # see Capybara::Assertions#assert_no_link
    # :method: must_have_link

    ##
    # Expectation that there is no link
    #
    # see Capybara::Expectations#must_have_link
    # see Capybara::Assertions#assert_link
    # see Capybara::Assertions#refute_link
    # see Capybara::Assertions#assert_no_link
    # :method: wont_have_link


    ##
    # Expectation that there is select
    #
    # see Capybara::Expectations#wont_have_select
    # see Capybara::Assertions#assert_select
    # see Capybara::Assertions#refute_select
    # see Capybara::Assertions#assert_no_select
    # :method: must_have_select

    ##
    # Expectation that there is no select
    #
    # see Capybara::Expectations#must_have_select
    # see Capybara::Assertions#assert_select
    # see Capybara::Assertions#refute_select
    # see Capybara::Assertions#assert_no_select
    # :method: wont_have_select


    ##
    # Expectation that there is selector
    #
    # see Capybara::Expectations#wont_have_selector
    # see Capybara::Assertions#assert_selector
    # see Capybara::Assertions#refute_selector
    # see Capybara::Assertions#assert_no_selector
    # :method: must_have_selector

    ##
    # Expectation that there is no selector
    #
    # see Capybara::Expectations#must_have_selector
    # see Capybara::Assertions#assert_selector
    # see Capybara::Assertions#refute_selector
    # see Capybara::Assertions#assert_no_selector
    # :method: wont_have_selector


    ##
    # Expectation that there is table
    #
    # see Capybara::Expectations#wont_have_table
    # see Capybara::Assertions#assert_table
    # see Capybara::Assertions#refute_table
    # see Capybara::Assertions#assert_no_table
    # :method: must_have_table

    ##
    # Expectation that there is no table
    #
    # see Capybara::Expectations#must_have_table
    # see Capybara::Assertions#assert_table
    # see Capybara::Assertions#refute_table
    # see Capybara::Assertions#assert_no_table
    # :method: wont_have_table


    ##
    # Expectation that there is text
    #
    # see Capybara::Expectations#wont_have_text
    # see Capybara::Assertions#assert_text
    # see Capybara::Assertions#refute_text
    # see Capybara::Assertions#assert_no_text
    # :method: must_have_text

    ##
    # Expectation that there is no text
    #
    # see Capybara::Expectations#must_have_text
    # see Capybara::Assertions#assert_text
    # see Capybara::Assertions#refute_text
    # see Capybara::Assertions#assert_no_text
    # :method: wont_have_text


    ##
    # Expectation that there is unchecked_field
    #
    # see Capybara::Expectations#wont_have_unchecked_field
    # see Capybara::Assertions#assert_unchecked_field
    # see Capybara::Assertions#refute_unchecked_field
    # see Capybara::Assertions#assert_no_unchecked_field
    # :method: must_have_unchecked_field

    ##
    # Expectation that there is no unchecked_field
    #
    # see Capybara::Expectations#must_have_unchecked_field
    # see Capybara::Assertions#assert_unchecked_field
    # see Capybara::Assertions#refute_unchecked_field
    # see Capybara::Assertions#assert_no_unchecked_field
    # :method: wont_have_unchecked_field


    ##
    # Expectation that there is xpath
    #
    # see Capybara::Expectations#wont_have_xpath
    # see Capybara::Assertions#assert_xpath
    # see Capybara::Assertions#refute_xpath
    # see Capybara::Assertions#assert_no_xpath
    # :method: must_have_xpath

    ##
    # Expectation that there is no xpath
    #
    # see Capybara::Expectations#must_have_xpath
    # see Capybara::Assertions#assert_xpath
    # see Capybara::Assertions#refute_xpath
    # see Capybara::Assertions#assert_no_xpath
    # :method: wont_have_xpath
  end
end
