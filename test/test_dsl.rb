require "rails_helper"

describe "Capybara DSL Acceptance Test" do

  it "can call using_wait_time" do
    Capybara.expects(:using_wait_time).with(6)
    using_wait_time(6)
  end

  it "can call page" do
    Capybara.expects(:current_session)
    page
  end

  it "can call using_session" do
    Capybara.expects(:using_session).with(:name)
    using_session(:name)
  end

end
