require "faker"

  25.times do
    User.create!(
      email: Faker::Internet.email,
      password: "password",
      password_confirmation: "password"

    )
  end

  users = User.all

  100.times do
    Item.create!(
      name: Faker::Company.buzzword,
      user_id: Faker::Number.between(1, 26)
    )
  end

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"
