require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Poo Zoo", "Toronto")
z2 = Zoo.new("Zoo Two", "New York")
z3 = Zoo.new("The Best Zoo", "Seattle")
z4 = Zoo.new("Zoo Four", "New York")

z1.get_animal("Fox", 8, "Sly")
z1.get_animal("Fox", 8, "George")
z1.get_animal("Rhino", 2000, "Bud")
z2.get_animal("Toucan", 4, "Patricia")


binding.pry
puts "done"
