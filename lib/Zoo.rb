class Zoo
    @@all = []
    attr_reader :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @animals =[]
        @@all << self
    end

    def self.all
        @@all
    end

    def new_animal(species, weight, nickname)
        @animals << Animal.new(species, weight, nickname)

    def animals
        @animals
    end

    def animal_species
        @animals.each.uniq do |animal|
            animal.species
        end
    end
end
