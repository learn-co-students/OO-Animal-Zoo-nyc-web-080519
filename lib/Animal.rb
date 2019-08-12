class Animal
    @@all = []
    attr_reader :species, :nickname
    attr_accessor :weight
    
    def initiate(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def self.all
        @@all
    end

    def find_by_species(species)
        @@all.each.select do |animal|
            animal.species == species
    end

end
