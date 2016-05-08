# -*- encoding: utf-8 -*-
# stub: minitest-rails-capybara 2.1.2.20160507195331 ruby lib

Gem::Specification.new do |s|
  s.name = "minitest-rails-capybara".freeze
  s.version = "2.1.2.20160507195331"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mike Moore".freeze]
  s.date = "2016-05-08"
  s.description = "Adds Capybara feature tests in Minitest and Rails.".freeze
  s.email = ["mike@blowmage.com".freeze]
  s.extra_rdoc_files = ["CHANGELOG.rdoc".freeze, "Manifest.txt".freeze, "README.rdoc".freeze]
  s.files = [".autotest".freeze, ".gemtest".freeze, ".travis.yml".freeze, "CHANGELOG.rdoc".freeze, "Gemfile".freeze, "LICENSE".freeze, "Manifest.txt".freeze, "README.rdoc".freeze, "Rakefile".freeze, "gemfiles/4.1.gemfile".freeze, "gemfiles/4.2.gemfile".freeze, "lib/generators/minitest/feature/feature_generator.rb".freeze, "lib/generators/minitest/feature/templates/feature_spec.rb".freeze, "lib/generators/minitest/feature/templates/feature_test.rb".freeze, "lib/minitest-rails-capybara.rb".freeze, "lib/minitest/rails/capybara.rb".freeze, "minitest-rails-capybara.gemspec".freeze, "tasks/test.rake".freeze, "test/rails_helper.rb".freeze, "test/test_assertions_expectation.rb".freeze, "test/test_dsl.rb".freeze, "test/test_sanity.rb".freeze, "test/test_spec.rb".freeze, "test/test_spec_type.rb".freeze]
  s.homepage = "http://blowmage.com/minitest-rails-capybara".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.rdoc".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Capybara integration for Minitest and Rails".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest-rails>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<capybara>.freeze, ["~> 2.7"])
      s.add_runtime_dependency(%q<minitest-capybara>.freeze, ["~> 0.8"])
      s.add_runtime_dependency(%q<minitest-metadata>.freeze, ["~> 0.6"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>.freeze, ["~> 3.15"])
    else
      s.add_dependency(%q<minitest-rails>.freeze, ["~> 2.1"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.7"])
      s.add_dependency(%q<minitest-capybara>.freeze, ["~> 0.8"])
      s.add_dependency(%q<minitest-metadata>.freeze, ["~> 0.6"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 4.0"])
      s.add_dependency(%q<hoe>.freeze, ["~> 3.15"])
    end
  else
    s.add_dependency(%q<minitest-rails>.freeze, ["~> 2.1"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.7"])
    s.add_dependency(%q<minitest-capybara>.freeze, ["~> 0.8"])
    s.add_dependency(%q<minitest-metadata>.freeze, ["~> 0.6"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4.0"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.15"])
  end
end
