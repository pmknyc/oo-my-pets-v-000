class Cat
  attr_accessor mood:
  attr_reader name:

  def initialize(name, mood = "nervous")
    @mood #initialize w/ default nervous mood
    @name = name
  end



#class end below
end
