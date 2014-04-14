require "test_helper"

feature "<%= class_name %>" do
  scenario "the test is sound" do
    visit root_path
    page.must_have_content "Hello World"
    page.wont_have_content "Goobye All!"
  end
end
