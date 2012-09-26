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

    it "has link to about page" do
      click_link 'About'
      current_path.should == '/static_pages/about'
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

    it "has link to home page" do
      click_link 'Home'
      current_path.should == '/static_pages/home'
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