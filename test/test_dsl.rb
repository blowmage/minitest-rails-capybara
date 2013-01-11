require "rails_helper"

describe "Capybara DSL Feature Test" do

  it "can call using_wait_time" do
    ret = "ZOMG! using_wait_time was called!"
    Capybara.stub :using_wait_time, ret do
      assert_equal ret, using_wait_time(6)
    end
  end

  it "can call page" do
    ret = "ZOMG! page called current_session!"
    Capybara.stub :current_session, ret do
      assert_equal ret, page
    end
  end

  it "can call using_session" do
    ret = "ZOMG! using_session was called!"
    Capybara.stub :using_session, ret do
      using_session(:name)
    end
  end

end
