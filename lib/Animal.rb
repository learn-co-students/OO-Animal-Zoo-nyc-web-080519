class Animal
    attr_accessor :weight, :zoo
    attr_reader :specie, :nickname
    @@all = []

    def initialize(specie, weight, nickname, zoo)
        @specie = specie
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    #Take an Animal species as argument
    #Return an Array of all the animals that are that species
    def self.find_by_species(given_specie)
        self.all.select {|animal| animal.specie == given_specie}
    end
end
