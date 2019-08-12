class Zoo

    attr_reader :location, :name

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @ll
    end

    def animals
        
    end

    def animal_species
        
    end

    def find_by_species

    end

    # need the helper method for all the animals to get animal nicknames
    def all_my_animals
        my_animals = Animal.all.select do |animal| 
            animal.
        end
    end

    # need to complete
    def animal_nicknames
        all_my_animals.select do |animal|
    end

    def self.find_by_location(zoo_location)
        self.all.select do |zoo|
            zoo.location == zoo_location
        end 
    end

end
