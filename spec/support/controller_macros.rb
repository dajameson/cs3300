module ControllerMacros
    def login_user
        #before each test, create and login the user
        before(:each) do
            @request.env["devise.mapping"] = Devise.mappings[:user]
            user = FactoryBot.create(:user)
           
            sign_in user
        end
    end

    #def login_admin
    #    before(:each) do
     #       @request.env["devise.mapping"] = Devise.mappings[:admin]
     #      sign_in FactoryBot.create(:admin)
     #      sign_in admin
     #  end
    #end
end

