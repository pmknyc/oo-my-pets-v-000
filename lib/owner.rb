class Owner

  attr_accessor  :pets, :fishes, :cats, :dogs
  @@all = []
  
  def initialize
    @pets = Hash.new{:fishes => [], :cats => [], :dogs => []}
  end

  def self.all
    @@all << self
  end



#class end below
end
