class Animal

  @@all = [] #all instances of Animal 

  attr_accessor :weight, :zoo
  attr_reader :species, :nickname

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight 
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  def self.all 
    @@all 
  end

  #should take in an animal's species as an argument and return an array of all the animals, which are of that species. 
  def self.find_by_species(species)
    self.all.select do |animal|
      animal.species == species 
    end
  end 


end #end of Animal class 
