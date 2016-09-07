require 'faker'


# Create Users
10.times do

  User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
  end
  users = User.all

# Create Lists
  3.times do

    List.create!(
    user: users.sample,
    list: Faker::Hipster.word,
    )
    end
    lists = List.all

# Create Items
  50.times do

    Item.create!(
    list: lists.sample,
    item: Faker::Hipster.word
    )
    end
    items = Item.all

User.create!(
  name: 'tom',
  email: 'cc@cc.com',
  password: 'password'
)

 puts "Seed finished"
 puts "#{Item.count} items created"
 puts "#{List.count} lists created"
 puts "#{User.count} users created"
 puts "Tom was created"
