require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
describe "<%= class_name %> Feature Test" do
  it "sanity" do
    visit root_path
    page.must_have_content "Hello World"
    page.wont_have_content "Goobye All!"
  end
end
