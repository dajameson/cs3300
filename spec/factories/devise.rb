FactoryBot.define do
    factory :user do 
        id {1}
        email {"test@g.com"}
        password {"qwerty"}
        password_confirmation {"qwerty"}
        # Add additional fields as required via your User model
    end
end