require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

z1 = Zoo.new("Zoo1", "Bronx")
z2 = Zoo.new("Zoo2", "Washington")
z3 = Zoo.new("Zoo3", "Cleveland")
z4 = Zoo.new("Zoo4", "Central Park")

a1 = z1.add_animal("elephant", 2000, "Dumbo")
a2 = z1.add_animal("monkey", 35, "chimpy")
a3 = z1.add_animal("giraffe", 500, "Tall Boy")
a4 = Animal.new("lion", 600, "Rory", z2)
a5 = Animal.new("cheetah", 600, "Speedy", z2)
a6 = Animal.new("turtle", 600, "Shelly", z3)
a7 = Animal.new("panda", 600, "Spot", z4)
a8 = z2.add_animal("elephant", 2050, "Stompy")
a9 = z1.add_animal("monkey", 50, "Marcel")
a10 = z1.add_animal("lion", 500, "Simba")





binding.pry
puts "done"
