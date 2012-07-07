# -*- ruby -*-

require 'rubygems'
require 'hoe'

Hoe.plugin :git
Hoe.plugin :gemspec
Hoe.plugins.delete :rubyforge

Hoe.spec 'minitest-rails-capybara' do
  developer 'Mike Moore', 'mike@blowmage.com'

  self.summary     = 'Capybara integration for MiniTest::Rails.'
  self.description = 'Adds Capybara to acceptance tests in Minitest::Rails.'
  self.urls        = ['http://blowmage.com/minitest-rails-capybara']

  self.history_file = "CHANGELOG.rdoc"
  self.readme_file  = "README.rdoc"
  self.testlib      = :minitest

  extra_deps << ['minitest-rails']
  extra_deps << ['capybara']
end

# vim: syntax=ruby
