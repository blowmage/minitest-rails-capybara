require "test_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "<%= class_name %> Feature Test" do
  scenario "the test is sound" do
    visit root_path
    page.must_have_content "Hello World"
    page.wont_have_content "Goobye All!"
  end
end
