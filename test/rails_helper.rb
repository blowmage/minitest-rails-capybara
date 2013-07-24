require "minitest/autorun"
require "action_controller/railtie"

class TestApp < Rails::Application
  config.secret_token = "821c600ece97fc4ba952d67655b4b475"
  initialize!
  routes.draw do
    root to: 'hello#world'
  end
end
class HelloController < ActionController::Base
  def world
    render inline: "<!DOCTYPE html><title>TestApp</title>
                    <h1>Hello <span>World</span></h1>
                    <nav><ul><li><a href='/'>home</a></li></ul></nav>
                    <p><label>Email Address<input type='text'></label></p>
                    <button>random button</button>
                    <label>going<input type='checkbox' checked='checked'></label>
                    <label>avoid<input type='checkbox'></label>"
  end
end

Rails.application = TestApp

require "rails/test_help"
require "minitest/rails/capybara"

Capybara.session_name = nil
Capybara.default_driver = nil
Capybara.use_default_driver
Capybara.app = TestApp
