require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


zoo1 = Zoo.new("The Happy Zoo", "New York")
zoo2 = Zoo.new("The Sad Zoo", "New Jersey")
zoo3 = Zoo.new("The Angry Zoo", "Binghamton")
zoo4 = Zoo.new("The Lonely Zoo", "Hartsdale")

animal1 = Animal.new("Cat", 10, "GuaGua", zoo1)
animal2 = Animal.new("Dog", 15, "Oliver", zoo1)
animal3 = Animal.new("Cat", 18, "Bill", zoo2)
animal4 = Animal.new("Cat", 40, "Stacy", zoo1)
animal5 = Animal.new("Dog", 10, "Jake", zoo2)

# Animal.find_by_species("Cat")
# zoo1.animals
# zoo1.find_by_species("Cat")


binding.pry
puts "done"
