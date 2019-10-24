# With the right gem in the Gemfile
require 'faker'

# Generate 100 names of cities
100.times do
	City.create!(name: Faker::Address.city)
end

# Generate 100 names of dogs
100.times do
	Dog.create!(name: Faker::Name.first_name, city: City.all.sample)
end

# Generate 100 names of dogsitters
100.times do
	Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

# Generate 100 strolls
100.times do
	Stroll.create!(date: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), dog: Dog.all.sample, dogsitter: Dogsitter.all.sample, city: City.all.sample)
end
