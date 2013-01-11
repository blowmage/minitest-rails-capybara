# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "minitest-rails-capybara"
  s.version = "0.1.20130110230748"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Moore"]
  s.date = "2013-01-11"
  s.description = "Adds Capybara feature tests in MiniTest::Rails."
  s.email = ["mike@blowmage.com"]
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "Manifest.txt", "README.rdoc"]
  s.files = [".autotest", ".gemtest", "CHANGELOG.rdoc", "LICENSE", "Manifest.txt", "README.rdoc", "Rakefile", "lib/generators/mini_test/feature/feature_generator.rb", "lib/generators/mini_test/feature/templates/feature_spec.rb", "lib/generators/mini_test/feature/templates/feature_test.rb", "lib/minitest-rails-capybara.rb", "lib/minitest/rails/capybara.rb", "minitest-rails-capybara.gemspec", "test/rails_helper.rb", "test/test_dsl.rb", "test/test_matchers.rb", "test/test_sanity.rb"]
  s.homepage = "http://blowmage.com/minitest-rails-capybara"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "minitest-rails-capybara"
  s.rubygems_version = "1.8.23"
  s.summary = "Capybara integration for MiniTest::Rails."
  s.test_files = ["test/test_dsl.rb", "test/test_matchers.rb", "test/test_sanity.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest-rails>, ["~> 0.3"])
      s.add_runtime_dependency(%q<capybara>, ["~> 2.0"])
      s.add_runtime_dependency(%q<minitest-capybara>, ["~> 0.1"])
      s.add_runtime_dependency(%q<minitest-matchers>, [">= 1.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<hoe>, ["~> 3.3"])
    else
      s.add_dependency(%q<minitest-rails>, ["~> 0.3"])
      s.add_dependency(%q<capybara>, ["~> 2.0"])
      s.add_dependency(%q<minitest-capybara>, ["~> 0.1"])
      s.add_dependency(%q<minitest-matchers>, [">= 1.2"])
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<hoe>, ["~> 3.3"])
    end
  else
    s.add_dependency(%q<minitest-rails>, ["~> 0.3"])
    s.add_dependency(%q<capybara>, ["~> 2.0"])
    s.add_dependency(%q<minitest-capybara>, ["~> 0.1"])
    s.add_dependency(%q<minitest-matchers>, [">= 1.2"])
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<hoe>, ["~> 3.3"])
  end
end
