require "minitest/autorun"
require "minitest-rails-capybara"

class TestMiniTestRailsCapybara < MiniTest::Unit::TestCase
  def test_sanity
    assert MiniTest::Rails::Capybara::VERSION
  end
end
