require 'faker'

15.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )

  user.save!
end

users = User.all

25.times do
  item = Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )

end

items = Item.all

puts "Seeds Finished!"
puts "#{User.count} users created"
puts "#{Item.count} items created"
