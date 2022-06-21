FactoryBot.define do
  user = Faker::Internet.user('username', 'email')

  factory :user do
    email { user.email }
    username { user.username }
  end
end
