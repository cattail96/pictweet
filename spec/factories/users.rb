FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.Initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password_confirmation(min_length: 6)}
    password_confirmation {password}
  end
end