FactoryGirl.define do
  factory :user do
    name     "Doughlas Adams"
    sequence(:email) { |n| "person#{n}@example.com" }  # I had an error here - had person{n} ***
    password "helloworld"
    password_confirmation "helloworld"
    confirmed_at Time.now
  end
end