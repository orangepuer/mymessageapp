FactoryBot.define do
  sequence :email do |n|
    "user#{n}@test.com"
  end

  factory :user do
    name { "MyName" }
    surname { "MySurname" }
    patronymic { "MyPatronymic" }
    email
    password { 1235235235 }
    password_confirmation { 1235235235 }
  end
end
