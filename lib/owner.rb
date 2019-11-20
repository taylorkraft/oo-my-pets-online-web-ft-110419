class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
  end 
  
  def say_species
    puts "I am a #{@species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self} 
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(cat)
    
  end 
  
  def buy_dog
  end 
  
  def walk_dogs(dogs)
    dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats 
    Cat.mood = "happy"
  end 
  
  def sell_pets
  end 
  
  def list_pets
  end
  
end