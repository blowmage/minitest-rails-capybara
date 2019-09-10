# -*- ruby -*-

require "rubygems"
require "hoe"

Hoe.plugin :git
Hoe.plugin :gemspec

Hoe.spec "minitest-rails-capybara" do
  developer "Mike Moore", "mike@blowmage.com"

  self.summary     = "Capybara integration for Minitest and Rails"
  self.description = "Adds Capybara feature tests in Minitest and Rails."
  self.urls        = ["http://blowmage.com/minitest-rails-capybara"]

  self.history_file = "CHANGELOG.rdoc"
  self.readme_file  = "README.rdoc"
  self.testlib      = :minitest

  license "MIT"

  dependency "minitest-rails",    "~> 3.0"
  dependency "capybara",          [">= 2.7", "<= 4"]
  dependency "minitest-capybara", "~> 0.8"
  dependency "minitest-metadata", "~> 0.6"
end

Dir["tasks/**/*.rake"].each { |t| load t }

# vim: syntax=ruby
