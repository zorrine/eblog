require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'eye3ware'" do
      visit '/static_pages/home'
      page.should have_content('eye3ware')
    end
  end
end