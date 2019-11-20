class Cat
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def intialize(name, Owner)
    @name = name
    @mood = "nervous"
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
end