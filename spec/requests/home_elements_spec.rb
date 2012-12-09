require 'spec_helper'

describe "HomeElements" do
  it "should have the h1 'home_elements'" do
      visit '/home_elements'
      page.should have_selector('h1', text: 'home_elements')
    end

    it "should have the title 'Home Elements'" do
      visit '/home_elements'
      page.should have_selector('title', text: "Sherlock | Home Elements")
    end
end
