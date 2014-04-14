require "minitest/autorun"
require "minitest-rails-capybara"

class TestMinitestRailsCapybara < Minitest::Unit::TestCase
  def test_sanity
    assert Minitest::Rails::Capybara::VERSION
  end
end
