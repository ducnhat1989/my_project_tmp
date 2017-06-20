10.times do  
  ToDo.create title: Faker::Lorem.sentence(20), status: rand(0..1)
end