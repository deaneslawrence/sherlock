require 'spec_helper'

describe "Base pages" do

  describe "Home page" do

    it "should have the content 'Sherlock'" do
      visit '/base_pages/home'
      page.should have_content('Sherlock')
    end
  end
end
