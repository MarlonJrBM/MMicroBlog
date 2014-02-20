require 'spec_helper'

describe "Static pages" do

subject { page }

  describe "Home page" do
    before { visit root_path }


    it { should have_content('C3 App') }
    it { should have_title("Ruby on Rails Tutorial C3 App") }
    it { should_not have_title('| Home') }

  end

describe "Help page" do
  before { visit help_path }

  it { should have_content('Help')  }
  it { should have_title('Ruby on Rails Tutorial C3 App | Help')}
end

  

   describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
  visit about_path
  expect(page).to have_title("Ruby on Rails Tutorial C3 App | About Us")
end

  end

  describe "Contact Page" do

    it "should have the content 'Contact'" do
        visit contact_path
        expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit contact_path
      expect(page).to have_title("Contact") 

    end


  end

  

end
