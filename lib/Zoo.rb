class Zoo

  attr_accessor :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  # Zoo.find_by_location should take in a location as an argument and return an array of all the zoos within that location.
  def self.find_by_location(location)
    self.all.select {|zoo| zoo.location == location }
  end

  def add_animal(species, weight, nickname)
    Animal.new(species, weight, nickname, self)
  end

  # Zoo#animals should return all the animals that a specific instance of a zoo has.
  def animals
    my_animals = []
    Animal.all.each do |animal|
      my_animals << animal if animal.zoo == self 
    end
    my_animals
  end

  # Zoo#animal_species should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
  def animal_species
    species = []
    animals.each do |animal|
      species << animal.species
    end
    species.uniq
  end

  # Zoo#find_by_species should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
  def find_by_species(species)
    animals.select do |animal|
      animal.species == species
    end
  end

  # Zoo#animal_nicknames should return an array of all the nicknames of animals that a specific instance of a zoo has.
  def animal_nicknames
    nicknames = []
    animals.each do |animal|
      nicknames << animal.nickname
    end
    nicknames
  end

  


end #end Zoo class

