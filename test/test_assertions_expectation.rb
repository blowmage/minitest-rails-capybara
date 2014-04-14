require "rails_helper"

describe "Capybara Assertions and Expectations Feature Test" do

  describe "have_content" do
    it "has page with content" do
      visit root_path
      assert_content page, "Hello World"
      refute_content page, "Goobye All!"
      page.must_have_content "Hello World"
      page.wont_have_content "Goobye All!"
    end
  end

  describe "have_selector" do
    it "has page with heading" do
      visit root_path
      assert_selector page, "h1"
      refute_selector page, "h3"
      page.must_have_selector "h1"
      page.wont_have_selector "h3"
    end
  end

  describe "have_link" do
    it "has a link to home" do
      visit root_path
      assert_link page, "home"
      refute_link page, "away"
      page.must_have_link "home"
      page.wont_have_link "away"
    end
  end

  describe "have_field" do
    it "has a button to submit" do
      visit root_path
      assert_field page, "Email Address"
      refute_field page, "Bank Account"
      page.must_have_field "Email Address"
      page.wont_have_field "Bank Account"
    end
  end

  describe "have_button" do
    it "has a button to login" do
      visit root_path
      assert_button page, "random button"
      refute_button page, "missing button"
      page.must_have_button "random button"
      page.wont_have_button "missing button"
    end
  end

  describe "have_checked_field" do
    it "has a button to submit" do
      visit root_path
      assert_checked_field page, "going"
      refute_checked_field page, "avoid"
      page.must_have_checked_field "going"
      page.wont_have_checked_field "avoid"
    end
  end

  describe "have_unchecked_field" do
    it "has a button to submit" do
      visit root_path
      assert_unchecked_field page, "avoid"
      refute_unchecked_field page, "going"
      page.must_have_unchecked_field "avoid"
      page.wont_have_unchecked_field "going"
    end
  end

end
