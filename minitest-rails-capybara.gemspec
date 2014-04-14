# -*- encoding: utf-8 -*-
# stub: minitest-rails-capybara 1.0.0.20140414101711 ruby lib

Gem::Specification.new do |s|
  s.name = "minitest-rails-capybara"
  s.version = "1.0.0.20140414101711"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mike Moore"]
  s.date = "2014-04-14"
  s.description = "Adds Capybara feature tests in MiniTest and Rails."
  s.email = ["mike@blowmage.com"]
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "Manifest.txt", "README.rdoc"]
  s.files = [".autotest", ".gemtest", ".travis.yml", "CHANGELOG.rdoc", "Gemfile", "LICENSE", "Manifest.txt", "README.rdoc", "Rakefile", "gemfiles/3.0.gemfile", "gemfiles/3.1.gemfile", "gemfiles/3.2.gemfile", "gemfiles/4.0.gemfile", "lib/generators/mini_test/feature/feature_generator.rb", "lib/generators/mini_test/feature/templates/feature_spec.rb", "lib/generators/mini_test/feature/templates/feature_test.rb", "lib/minitest-rails-capybara.rb", "lib/minitest/rails/capybara.rb", "minitest-rails-capybara.gemspec", "tasks/test.rake", "test/rails_helper.rb", "test/test_assertions_expectation.rb", "test/test_dsl.rb", "test/test_sanity.rb", "test/test_spec.rb"]
  s.homepage = "http://blowmage.com/minitest-rails-capybara"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.rubygems_version = "2.2.2"
  s.summary = "Capybara integration for MiniTest and Rails"
  s.test_files = ["test/test_assertions_expectation.rb", "test/test_dsl.rb", "test/test_sanity.rb", "test/test_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest-rails>, ["~> 1.0"])
      s.add_runtime_dependency(%q<capybara>, ["~> 2.0"])
      s.add_runtime_dependency(%q<minitest-capybara>, ["~> 0.5.0"])
      s.add_runtime_dependency(%q<minitest-metadata>, ["~> 0.5.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.11"])
    else
      s.add_dependency(%q<minitest-rails>, ["~> 1.0"])
      s.add_dependency(%q<capybara>, ["~> 2.0"])
      s.add_dependency(%q<minitest-capybara>, ["~> 0.5.0"])
      s.add_dependency(%q<minitest-metadata>, ["~> 0.5.0"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.11"])
    end
  else
    s.add_dependency(%q<minitest-rails>, ["~> 1.0"])
    s.add_dependency(%q<capybara>, ["~> 2.0"])
    s.add_dependency(%q<minitest-capybara>, ["~> 0.5.0"])
    s.add_dependency(%q<minitest-metadata>, ["~> 0.5.0"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.11"])
  end
end
