require 'spec_helper'

feature "Viewing projects" do
  scenario "Listing all projects" do
    project = Factory.create(:project, :name => "Textmate 2")
    visit '/'
    click_link 'Textmate 2'
    page.current_url.should == project_url(project)
  end
end