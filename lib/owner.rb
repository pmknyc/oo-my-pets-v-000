class Owner

  attr_accessor :pets, :fishes, :cats, :dogs, :name
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(species)
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @species = "human"
  end

# Class methods
  def self.all
    @@all << self
  end

  def self.count #iadds to Owner count
    @@count +=1 if !@@all.include?(self)
  end

  def self.reset_all
    @@count = 0
    @@all = []
  end

# Instance methods
  def say_species
    puts "I am a #{species}."
  end

  def name
    @name
  end
#class end below
end
