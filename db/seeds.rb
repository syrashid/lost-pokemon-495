puts "Clearing the Pokemon Database"
Pokemon.destroy_all

puts "Generating Pokemon"
50.times do
  temp_pokemon = Pokemon.create( name: Faker::Games::Pokemon.name,
                  address: Faker::Games::Pokemon.location,
                  species: Pokemon::TYPES.sample,
                  found_on: Date.today - rand(1..21))
  puts "Generated #{temp_pokemon.name}"
end

puts "Generated #{Pokemon.count} pokemon"
