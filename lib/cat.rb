class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  
  def intialize(name, owner)
    @name = name
    mood = "nervous"
  end
end