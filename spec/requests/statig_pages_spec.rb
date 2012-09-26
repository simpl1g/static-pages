require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    before(:each) do
      visit '/static_pages/home'
    end
    it "has correct title" do
      page.should have_selector('title', text: 'Ruby Gardens :: Home')
    end

    it "has welcome content" do
      page.should have_content('Welcome to Ruby Gardens Home')
    end

  end

  describe "About page" do
    before(:each) do
      visit '/static_pages/about'
    end
    it "has correct title" do
      page.should have_selector('title', text: 'Ruby Gardens :: About')
    end

    it "has about content" do
      page.should have_content('About Ruby Gardens')
    end

  end

  describe "About page" do
    before(:each) do
      visit who_we_are_path
    end
    it "has correct title" do
      page.should have_selector('title', text: 'Ruby Gardens :: Who We Are')
    end

    it "has about content" do
      page.should have_content('Who We Are')
    end

  end
end