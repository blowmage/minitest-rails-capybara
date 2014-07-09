# -*- encoding: utf-8 -*-
# stub: minitest-rails-capybara 2.1.1.20140708223658 ruby lib

Gem::Specification.new do |s|
  s.name = "minitest-rails-capybara"
  s.version = "2.1.1.20140708223658"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mike Moore"]
  s.date = "2014-07-09"
  s.description = "Adds Capybara feature tests in Minitest and Rails."
  s.email = ["mike@blowmage.com"]
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "Manifest.txt", "README.rdoc"]
  s.files = [".autotest", ".gemtest", ".travis.yml", "CHANGELOG.rdoc", "Gemfile", "LICENSE", "Manifest.txt", "README.rdoc", "Rakefile", "gemfiles/4.1.gemfile", "lib/generators/minitest/feature/feature_generator.rb", "lib/generators/minitest/feature/templates/feature_spec.rb", "lib/generators/minitest/feature/templates/feature_test.rb", "lib/minitest-rails-capybara.rb", "lib/minitest/rails/capybara.rb", "minitest-rails-capybara.gemspec", "tasks/test.rake", "test/rails_helper.rb", "test/test_assertions_expectation.rb", "test/test_dsl.rb", "test/test_sanity.rb", "test/test_spec.rb", "test/test_spec_type.rb"]
  s.homepage = "http://blowmage.com/minitest-rails-capybara"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.rubygems_version = "2.2.2"
  s.summary = "Capybara integration for Minitest and Rails"
  s.test_files = ["test/test_assertions_expectation.rb", "test/test_dsl.rb", "test/test_sanity.rb", "test/test_spec.rb", "test/test_spec_type.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest-rails>, ["~> 2.1"])
      s.add_runtime_dependency(%q<capybara>, ["~> 2.0"])
      s.add_runtime_dependency(%q<minitest-capybara>, ["~> 0.7.0"])
      s.add_runtime_dependency(%q<minitest-metadata>, ["~> 0.5.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.12"])
    else
      s.add_dependency(%q<minitest-rails>, ["~> 2.1"])
      s.add_dependency(%q<capybara>, ["~> 2.0"])
      s.add_dependency(%q<minitest-capybara>, ["~> 0.7.0"])
      s.add_dependency(%q<minitest-metadata>, ["~> 0.5.0"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.12"])
    end
  else
    s.add_dependency(%q<minitest-rails>, ["~> 2.1"])
    s.add_dependency(%q<capybara>, ["~> 2.0"])
    s.add_dependency(%q<minitest-capybara>, ["~> 0.7.0"])
    s.add_dependency(%q<minitest-metadata>, ["~> 0.5.0"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.12"])
  end
end
