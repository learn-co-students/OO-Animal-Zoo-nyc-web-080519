require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#CREATE ZOOS
zoo1 = Zoo.new("bronx zoo", "NY, NY")
zoo2 = Zoo.new("columbus zoo", "Columbus, OH")
zoo3 = Zoo.new("private zoo", "thats private!")
zoo4 = Zoo.new("Pablo's zoo", "thats private!")

#CREATE AMIMALS
zebra1 = Animal.new("zebra", 600, "zebby", zoo1)
panda1 = Animal.new("panda", 400, "pandy poo", zoo1)
panda2 = Animal.new("panda", 430, "cuddly one", zoo1)
panda3 = Animal.new("panda", 445, "andrew", zoo2)
panda4 = Animal.new("panda", 400, "pandy", zoo2)
panda5 = Animal.new("panda", 260, "p-bear", zoo3)
lion1 = Animal.new("lion", 233, "simba", zoo1)
lion2 = Animal.new("lion", 534, "big pappa", zoo1)
lion3 = Animal.new("lion", 398, "nala", zoo2)
lion4 = Animal.new("lion", 400, "mufasa", zoo2)
lion5 = Animal.new("lion", 260, "leo", zoo3)
tiger1 = Animal.new("tiger", 233, "timmy", zoo1)
tiger2 = Animal.new("tiger", 534, "toby", zoo1)
tiger3 = Animal.new("tiger", 398, "stripes", zoo2)
tiger4 = Animal.new("tiger", 400, "eldrick", zoo2)
tiger5 = Animal.new("tiger", 260, "tony", zoo3)
monkey1 = Animal.new("monkey", 33, "chimpy", zoo1)
monkey2 = Animal.new("monkey", 34, "chompy", zoo1)
monkey3 = Animal.new("monkey", 98, "killer", zoo2)
monkey4 = Animal.new("monkey", 40, "swingy", zoo2)
monkey5 = Animal.new("monkey", 60, "screamy", zoo3)



binding.pry
puts "done"
