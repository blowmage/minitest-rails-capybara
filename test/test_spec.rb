require "rails_helper"

feature "Capybara Spec DSL Feature Test" do

  scenario "works unnested" do
    assert true
  end

  feature "when nested" do
    scenario "works nested" do
      assert true
    end
  end

  given(:thing) { "I am a thing." }

  scenario "given works unnested" do
    assert_equal "I am a thing.", thing
  end

  feature "given nested" do

    given(:widget) { "I am a widget." }

    scenario "works nested" do
      assert_equal "I am a thing.", thing
    end

    scenario "widget works too" do
      assert_equal "I am a widget.", widget
    end

  end

  feature "metadata" do

    scenario "default driver" do
      assert_equal Capybara.default_driver, Capybara.current_driver
    end

    scenario "javascript driver", js: true do
      assert_equal Capybara.javascript_driver, Capybara.current_driver
    end

  end

end
