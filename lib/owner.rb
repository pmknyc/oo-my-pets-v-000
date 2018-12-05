class Owner

  attr_accessor :pets, :fishes, :cats, :dogs, :count
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize
    @pets = Hash.new{:fishes => [], :cats => [], :dogs => []}
    @species = "human"
    self.count
    self.all
  end

# Class methods
  def self.all
    @@all << self
  end

  def self.count #iadds to Owner count; called by initialize method
    @@count +=1
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

  end
#class end below
end
