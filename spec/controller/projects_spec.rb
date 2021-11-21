
require "rails_helper"

#rspec tests for controller
RSpec.describe ProjectsController, type: :controller do 
 login_user
  
  let(:valid_attributes){ 
    {:title => "Test title!", :description => "This is a test description", :status => "draft"}
  }
  let(:valid_session) {{}}

  context "GET #index" do
    #login_user
    it "returns a success response" do
      
      #Project.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
     
    end
  end

  #tests if a project can be created with a title and description
  context "GET #show" do
    #login_user
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end


end

