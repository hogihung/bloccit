FactoryGirl.define do
  factory :user do
    name     "Doughlas Adams"
    email    "doughlas@example.com"
    password "helloworld"
    password_confirmation "helloworld"
    confirmed_at Time.now
  end
end