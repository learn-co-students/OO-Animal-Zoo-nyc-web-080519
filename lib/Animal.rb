class Animal
    attr_reader :species, :nickname
    attr_accessor :weight

    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def zoo
        Zoo.all.select do |zoo|
            zoo.animals.include?(self)
        end[0]
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        all.select do |animal|
            animal.species == species
        end
    end
end
