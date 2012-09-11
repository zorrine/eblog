require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

   it "should have the h1 'eye3ware'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'eye3ware')
    end

   it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "eye3ware")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
    
  end
  
  describe "Contact page" do

   it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "eye3ware | Contact")
    end
  end
  
 describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "eye3ware | About Us")
    end
  end
  
end