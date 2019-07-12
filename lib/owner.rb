require "pry"
class Owner
  @@all = []
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end


  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
   end
  end
  
  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
  
  def list_pets
    "I have #{@dogs.size} dog(s), and #{@cats.size} cat(s)."
  end
end