
Garden.destroy_all
Plant.destroy_all
User.destroy_all

4.times do 
    User.create(user_name: Faker::Name.name, password: "password")
end

User.create(user_name: "Matt", password: "password")


3.times do
    Garden.create(name: ["Indoor Garden", "Frontyard Garden", "Backyard Garden"].sample)
end


17.times do 
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 1, garden_id: rand(1..3))
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 2, garden_id: rand(1..3))
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 3, garden_id: rand(1..3))
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 4, garden_id: rand(1..3))
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 5, garden_id: rand(1..3))
end
puts "HELL YEAH"