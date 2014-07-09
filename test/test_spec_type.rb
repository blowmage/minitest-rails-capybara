require "rails_helper"

class TestCapybaraSpecType < Minitest::Test
  def assert_capybara actual
    assert_equal Capybara::Rails::TestCase, actual
  end

  def refute_capybara actual
    refute_equal Capybara::Rails::TestCase, actual
  end

  def test_spec_type_resolves_for_matching_feature_strings
    assert_capybara Minitest::Spec.spec_type("WidgetFeatureTest")
    assert_capybara Minitest::Spec.spec_type("Widget Feature Test")
    assert_capybara Minitest::Spec.spec_type("WidgetFeature")
    assert_capybara Minitest::Spec.spec_type("Widget Feature")
    # And is not case sensitive
    assert_capybara Minitest::Spec.spec_type("widgetfeaturetest")
    assert_capybara Minitest::Spec.spec_type("widget feature test")
    assert_capybara Minitest::Spec.spec_type("widgetfeature")
    assert_capybara Minitest::Spec.spec_type("widget feature")
  end

  def test_spec_type_wont_match_non_space_characters_feature
    refute_capybara Minitest::Spec.spec_type("Widget Feature\tTest")
    refute_capybara Minitest::Spec.spec_type("Widget Feature\rTest")
    refute_capybara Minitest::Spec.spec_type("Widget Feature\nTest")
    refute_capybara Minitest::Spec.spec_type("Widget Feature\fTest")
    refute_capybara Minitest::Spec.spec_type("Widget FeatureXTest")
  end

  def test_spec_type_resolves_for_matching_browser_strings
    assert_capybara Minitest::Spec.spec_type("WidgetBrowserTest")
    assert_capybara Minitest::Spec.spec_type("Widget Browser Test")
    assert_capybara Minitest::Spec.spec_type("WidgetBrowser")
    assert_capybara Minitest::Spec.spec_type("Widget Browser")
    # And is not case sensitive
    assert_capybara Minitest::Spec.spec_type("widgetbrowsertest")
    assert_capybara Minitest::Spec.spec_type("widget browser test")
    assert_capybara Minitest::Spec.spec_type("widgetbrowser")
    assert_capybara Minitest::Spec.spec_type("widget browser")
  end

  def test_spec_type_wont_match_non_space_characters_browser
    refute_capybara Minitest::Spec.spec_type("Widget Browser\tTest")
    refute_capybara Minitest::Spec.spec_type("Widget Browser\rTest")
    refute_capybara Minitest::Spec.spec_type("Widget Browser\nTest")
    refute_capybara Minitest::Spec.spec_type("Widget Browser\fTest")
    refute_capybara Minitest::Spec.spec_type("Widget BrowserXTest")
  end

  def test_spec_type_resolves_for_additional_desc_capybara
    refute_capybara Minitest::Spec.spec_type("Unmatched String")
    assert_capybara Minitest::Spec.spec_type("Unmatched String", :capybara)
    assert_capybara Minitest::Spec.spec_type("Unmatched String", :capybara, :other)
    assert_capybara Minitest::Spec.spec_type("Unmatched String", :other, :capybara)
  end
end
