class Zoo

  attr_accessor :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location            
    @@all << self
  end  # ends initialize method

  def location
    @location
  end  # ends location method

  def name
    @name
  end  # ends name method
  
  def self.all
    @@all
  end  # ends self.all method

  def animals
    Animal.all.select { |animal| animal.zoo == self}
  end  # ends animals method

  def animal_species
    animals.collect { |animal| animal.species }.uniq
  end  # ends animal_species method
  
  def find_by_species(spec)
    animals.select { |animal| animal.species == spec }
  end  # ends find_by_species method

  def animal_nicknames
    animals.collect { |animal| animal.nickname}
  end  # ends animal_nicknames method

  def self.find_by_location(location)
    self.all.select { |zoo| zoo.location == location }
  end  # ends self.find_by_location method

end  # end Zoo class
