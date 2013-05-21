require "test_helper"

class <%= class_name %>Test < Capybara::Rails::TestCase
  test "sanity" do
    visit root_path
    assert_have_content page, "Hello World"
    refute_have_content page, "Goobye All!"
  end
end
