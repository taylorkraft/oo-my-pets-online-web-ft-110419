class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species)
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
  
end