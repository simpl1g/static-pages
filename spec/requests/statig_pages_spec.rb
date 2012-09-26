require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "has correct title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: 'Ruby Gardens :: Home')
    end

    it "has welcome content" do
      visit '/static_pages/home'
      page.should have_content('Welcome to Ruby Gardens Home')
    end

    it "has link to about page" do
      visit '/static_pages/home'
      click_link 'About'
      current_path.should == '/static_pages/about'
    end
  end

  describe "About page" do
    it "has correct title" do
      visit '/static_pages/about'
      page.should have_selector('title', text: 'Ruby Gardens :: About')
    end

    it "has about content" do
      visit '/static_pages/about'
      page.should have_content('About Ruby Gardens')
    end

    it "has link to home page" do
      visit '/static_pages/about'
      click_link 'Home'
      current_path.should == '/static_pages/home'
    end
  end
end