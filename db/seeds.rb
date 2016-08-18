require 'faker'

5.times do
  user = { username: Faker::Internet.user_name,
         email: Faker::Internet.email,
         password: 'password' }
  User.create(user)
end
