class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  
  def intialize(name, owner)
    @name = name
    @owner = owner
    mood = "nervous"
  end
end