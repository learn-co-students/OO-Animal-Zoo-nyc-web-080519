class Zoo
  @@all = [] 

  attr_reader :name, :location

  def initialize(name, location)
    @name = name
    @location = location 
    @@all << self
  end

  def self.all
    @@all 
  end

  def animals #returns all the animals instances that the zoo has 
    Animal.all.select do |animal|
      self == animal.zoo 
    end
  end

  #return an array of all the species (as strings) of the animals in the zoo

  def animal_species
    animal_arr = self.animals.map do |animal|
      animal.species
    end.uniq
  end 

  

  # should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.

  def find_by_species(species)
    self.animals.select do |animal|
    #binding.pry
      animal.species == species   
    end
  end

  #should return an array of all the nicknames of animals that a specific instance of a zoo has

  def animal_nicknames 
    self.animals.map do |animal|
      animal.nickname
    end 
  end

  #should take in a location as an argument and return an array of all the zoos within that location. 
  def self.find_by_location(location)
    zoos_array=self.all.select do |zoo| 
      zoo.location == location
    end 
    zoos_array.map do |zoo|
      zoo.name
    end
  end



end #end of Zoo class

