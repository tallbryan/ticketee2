require 'spec_helper'

feature "Editing Projects" do
  scenario "Updating a project" do
    Factory(:project, :name => "TextMate 2")
    visit "/"
    click_link "Textmate 2"
    click_link "EditProject"
    fill_in "Name", :with => "TextMate 2 beta"
    click_button "Update Project"
    page.should have_content("Project has been updated.")
  end
end