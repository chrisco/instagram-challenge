FactoryGirl.define do
  factory :user1 do
    email "funky@monkey.com"
    password "funkymonkey"
    password_confirmation "funkymonkey"
  end

  factory :user2 do
    email "moomoo@cow.com"
    password "funkymonkey"
    password_confirmation "moomoocow"
  end
end
