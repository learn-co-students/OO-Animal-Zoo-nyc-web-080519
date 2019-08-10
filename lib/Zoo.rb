class Zoo
    attr_reader :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    #Return all animals that are in the particular Zoo
    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    #Return an Array
    #return all the species in the Zoo
    #the array should be unique!!!
    def animal_species
        Animal.all.map do |animal|
            animal.specie
        end.uniq
    end

    #Take an Animal's species as an argument
    #Return an Array of all the animals that are that species
    def find_by_species(given_specie)
        Animal.all.select do |animal|
            animal.zoo == self && animal.specie == given_specie
        end

    end

    #Take in a location as an argument
    #Return an array of all the zoos in that location
    def self.find_by_location(given_location)
        self.all.select {|zoo| zoo.location == given_location}
    end

end
