require 'pry'
class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
  end 
  
  def say_species
    "I am a #{@species}."
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
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end 
  
  def buy_dog(name)
    dog = Dog.new(name, self)
    dog.owner = self
  end 
  
  def walk_dogs
    Dog.all.select {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats 
    Cat.all.select {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
    
  end 
  
  def list_pets
   # "I have #{} dog(s), and #{} cat(s)."
  end
  
end