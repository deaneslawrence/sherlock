require 'spec_helper'

describe "Customer pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'New customer') }
    it { should have_selector('title', text: full_title('Sign up')) }
  end
end
