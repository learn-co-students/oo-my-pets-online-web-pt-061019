class Owner
  attr_accessor :pets, :cats, :dogs 
  attr_reader :name, :species
  @@all = []
  
  def initialize(name, species="human")
    @species =species 
    @name = name 
    @@all << self 
    @cats =  []
    @dogs = []
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  def self.all 
    @@all
  end 
  
  def self.count
    @@all.length
  end 
  
  def self.reset_all  
    @@all.clear 
  end 

  def buy_cat(name)
    Cat.new(name, owner = self)
  end

  def buy_dog(name)
    Dog.new(name, owner = self)
  end  
  
  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def sell_pets
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil 
    end 
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end 
    self.cats.clear
    self.dogs.clear
  end 
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
  
end