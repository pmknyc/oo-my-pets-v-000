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
#  convert pet_types to string
#  use pet_array.size to get total num in each pet type
# must chop off plural endings of pet_type;
# fishes is only one ending 'es' not 's'
# for puts statement:
# output is reverse sorted alpha by pet type
#after make new hash of singular pet_type and pet num
  def list_pets
#    h_list = {}
#  binding.pry
#    self.pets.each do |pet_type, pet_array|
#      if pet_type == :fishes
#         pet_type = :fishs
#      end
#      h_list[pet_type.to_s.chop] = pet_array.size
#    end
#  # a_list = converted hash to 3-element nested array, each element has pet num & pet type
#  # sort this array in reverse alpha by pet type
#      a =  h_list.to_a.sort! { |a, b| b <=> a }
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
    # I have #{a[0][1]} #{a[0][0]}, #{a[1][1]} #{a[1][0]}(s), and #{a[2][1]} #{a[2][0]}(s)."
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
