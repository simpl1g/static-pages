require 'spec_helper'

describe "StaticPagesHelper" do
  describe "#link_to_gravatar" do
    it "has correct return value" do
      expect(helper.link_to_gravatar("1@2.ru")).to match /http:\/\/www.gravatar.com\/avatar\/[a-z0-9]+\?d=monsterid&s=150/
    end
  end
end