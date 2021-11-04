
require "rails_helper"
#tests if the description is present or not
RSpec.describe Project, type: :model do
  context "validations tests" do
    it "ensures the description is present" do
      project = Project.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end

    #tests if you can save your project
    it "should be able to save project" do
      project = Project.new(title: "Title", description: "Some description content goes here")
      expect(project.save).to eq(true)
    end
  end

  context "scopes tests" do

  end
end


require "rails_helper"
#tests model 
RSpec.describe Project, type: :model do
  # ...
    #tests if title or description is present
  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
    end
    #tests count of all projects
    it "should return all projects" do
      expect(Project.count).to eq(3)
    end

  end
end

