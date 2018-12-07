require 'pry'

class Owner

  attr_accessor :pets, :fishes, :cats, :dogs, :name
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(species)
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @species = "human"
    @@all << self
    @@count +=1
  end

# Class methods
  def self.all
    @@all
  end

  def self.count #iadds to Owner count
    @@count
  end

  def self.reset_all
    @@count = 0
    @@all = []
  end

# Instance methods
  def say_species
    "I am a human."
  end

  def name
    @name
  end

# Buy pets: take name argument and do the following:
#  Make new instance of the appropriate pet, initializing it with that name.
# Associate that new pet instance to the owner by
#  adding it to the appropriate array-value of the @pets hash
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

# iterate @pets hash => new hash {pet_type => pet_array.size}
#  convert pet_type to string
#  use array.size to get total num in pet_array
# for puts statement:
# must chop off plural endings of pet_type; fishes is only one
# that ends in 'es' not 's'

#after make new hash of singular pet_type and pet num
  def list_pets
    h_list = {}
    self.pets.each do |pet_type, pet_array|
        if pet_type == :fishes
          pet_type = :fishs
        end
      h_list[pet_type.to_s.chop] = pet_array.size
  # binding.pry
    end
      a_list =  h_list.compact.to_a.sort { |a, b| b <=> a }
      a_list.map.with_index
  #  "I have #{} #{??}, #{??} #{??}(s), and #{??} #{??}(s)."

  end

  def sell_pets
    self.pets.each_value do |pet_array|
      pet_array.each do |pet|
          pet.mood = "nervous"
      end
    end
    self.pets.clear
  end
#class end below
end
