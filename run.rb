require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

z1 = Zoo.new("philidelphia zoo", "philly")
z2 = Zoo.new("san diego zoo", "san diego")
z3 = Zoo.new("hello zoo", "san diego")

a1 = Animal.new("cats", 20, "pishi", z1)
a2 = Animal.new("elephants", 20000, "jumbo", z2)
a3 = Animal.new("moose", 3300, "charles", z2)
a4 = Animal.new("moose", 3300, "sidney", z2)



binding.pry
puts "done"
