class Animal

    attr_accessor :weight
    attr_reader :species, :nickname

    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @all << self
    end

    def self.all
        @@all
    end

    def zoo
    
    end

    def self.find_by_species(animal_species)
        self.all.select do |animal|
            animal.species == animal_species
        end
    end

end # end of Animal class
