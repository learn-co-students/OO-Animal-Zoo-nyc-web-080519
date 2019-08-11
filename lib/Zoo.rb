class Zoo
    attr_reader :name, :location
    attr_accessor :animals

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
        @animals = []
    end

    def get_animal(species, weight, nickname)
        self.animals << Animal.new(species, weight, nickname)
    end

    def animal_species()
        self.animals.map do |animal|
            animal.species
        end.uniq
    end

    def find_by_species(species)
        self.animals.select do |animal|
            animal.species == species
        end
    end

    def animal_nicknames
        self.animals.map do |animal|
            animal.nickname
        end
    end

    def self.all
        @@all
    end

    def self.find_by_location(location)
        all.select do |zoo|
            zoo.location == location
        end
    end

end
