require 'rails_helper'

#can add tests for features here
#RSpec.feature "HomePages", type: :feature do
#  pending "add some scenarios (or delete) #{__FILE__}"
#end


require "rails_helper"
#tests if a visitor to site can see the projects
RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see log in" do
    
    visit root_path
    #expect(page).to have_text("Projects")
    expect(page).to have_text("log in")
  end
  scenario "The visitor should see log out" do
    visit root_path
    expect(page).to have_text("log out")
  end
 
  scenario "The visitor should see Sign up" do
    visit root_path
    expect(page).to have_text("Sign up")
  end
  context "Visitor should " do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
    end
    scenario "see projects" do
      visit root_path
      expect(page).to have_text("Projects")
    end

  end
  
end

