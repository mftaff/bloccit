FactoryGirl.define do 
    factory :vote do
        # value RandomData.one_or_minus_one
        value 1
        user
        post
    end
end