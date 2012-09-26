require 'spec_helper'

describe "ApplicationHelper" do
  describe "#menu_links" do
    it "has correct return value" do
      expect(helper.menu_links({"tratata" => "/trololo"})).to have_selector('a', href: '/trololo')
    end
  end
end