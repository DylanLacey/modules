require "spec_helper"
require "helper"

describe "Sauce Labs Homepage", :sauce => true do
  it "exists" do
    check_for_bees.should eq("Everyone gets bees!")
    visit "http://www.translink.com.au"
  end
end