FactoryGirl.define do
  factory :user do
    email "funky@monkey.com"
    password "funkymonkey"
    password_confirmation "funkymonkey"
  end
end
