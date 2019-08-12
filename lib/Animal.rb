class Animal

  attr_accessor :weight 
  attr_reader :species, :nickname, :zoo
  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end  # ends initialize method

  def nickname
    @nickname
  end  # ends nickname method

  def weight
    @weight
  end  # ends weight method

  def species
    @species
  end  # ends species method

  def self.all
    @@all
  end  # ends self.all method

  def zoo
    @zoo
  end  # ends zoo method

  def self.find_by_species(spec)
     self.all.select { |animal| animal.species == spec }
  end  # ends self.find_by_species method

end  # end Animal class
