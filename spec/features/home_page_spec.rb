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
  scenario "The visitor should see Email" do
    visit root_path
    expect(page).to have_text("Email")
  end
  scenario "The visitor should see Password" do
    visit root_path
    expect(page).to have_text("Password")
  end
  scenario "The visitor should see Sign up" do
    visit root_path
    expect(page).to have_text("Remember me")
  end
  scenario "The visitor should see Sign up" do
    visit root_path
    expect(page).to have_text("Sign up")
  end
  scenario "The visitor should see Forgot your password?" do
    visit root_path
    expect(page).to have_text("Forgot your password?")
  end
end

