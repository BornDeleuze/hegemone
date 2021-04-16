
Plant.destroy_all
User.destroy_all

4.times do 
    User.create(user_name: Faker::Name.name, password: "password")
end

User.create(user_name: "Matt", password: "password")

17.times do 
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 1, garden_name: ["Indoor", "Backyard", "Frontyard"].sample)
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 2, garden_name: ["Indoor", "Backyard", "Frontyard"].sample)
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 3, garden_name: ["Indoor", "Backyard", "Frontyard"].sample)
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 4, garden_name: ["Indoor", "Backyard", "Frontyard"].sample)
    Plant.create(name: Faker::Cannabis.strain, latin_name: Faker::Ancient.primordial, notes: Faker::Books::Dune.quote, date_planted: Faker::Date.backward(days: 200), user_id: 5, garden_name: ["Indoor", "Backyard", "Frontyard"].sample)
end
puts "HELL YEAH"