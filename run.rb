require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Bronx Zoo", "Bronx, NY")
zoo2 = Zoo.new("San Diego Zoo", "San Diego, CA")

animal1 = Animal.new("Lion", 250, "Simba")
animal2 = Animal.new("Fish", 1, "Nemo")
animal3 = Animal.new("Lion", 200, "Nala")


binding.pry
puts "done"
