# 1. Set up Pet's initialize. Should be initialized with name, species and sound
# 2. Set up Pet's readers and writers. Can change sound and name, cannot change species
# 3. Set up `Pet.all` 

# Ori, Noura, Okechukwu 

class Pet 
    # *attr_macros* allow us to read/write that information
    attr_accessor :sound, :name, :owner
    attr_reader :species
    @@all = []

    def initialize(name, species, sound, owner=nil) # say we're Mojo 
        @name = name
        @species = species
        @sound = sound
        @owner = owner  # instance variables lets the instance *remember* the info it was created with
        @@all << self 
    end

    def self.all
        @@all 
    end

    # `Pet#best_friend_name` returns the name of the pets owner
    def best_friend_name
        # what is self? self is a pet instance ===> self.owner
        # what is self.owner?  an user instance ===> so i can use User instance methods
        # self.owner.name
        # PROCESS!!!! what is the thing you have access to? What methods can you call? which will be useful here? 
        if self.owner
            self.owner.name
        else
            nil
        end
        # tech debt - if owner is nil this will throw an error! 
    end

    # `Pet.all_species` prints a unique list of all the represented species

    def self.all_species
        Pet.all.map do |pet| 
            pet.species 
        end.uniq
    end

end

## BELONGS TO CLASS
## will hold the reference to the related instance (SSOT)
## initialize with the related instance
## remember the related instance w/ an instance variable
## expose that info with attr_macros (reader, writer)