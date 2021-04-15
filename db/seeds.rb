
Garden.destroy_all
Plant.destroy_all
User.destroy_all

4.times do 
    User.create(user_name: Faker::Name.name, password: "password")
end


5.times do
    Garden.create(name: ["Indoor Garden", "Frontyard Garden", "Backyard Garden"].sample)
end


60.times do 
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 1, garden_id: rand(1..5))
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 2, garden_id: rand(1..5))
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 3, garden_id: rand(1..5))
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 4, garden_id: rand(1..5))
end