require "spec_helper"

describe "Example Group" do
  describe "Sauce Labs Homepage", :sauce => true do
    it "exists" do
      check_for_bees.should eq("Everyone gets bees!")
      visit "http://www.saucelabs.com"
    end
  end
end
