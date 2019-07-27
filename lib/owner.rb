class Owner
  attr_reader :name , :species
  attr_accessor :cats, :dogs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all 
    @@all 
  end
  
  def self.count 
    self.all.length 
  end
  
  def self.reset_all 
    self.all.clear 
  end
  
  def buy_cat(name) 
    Cat.new(name, self) 
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs 
    @dogs.collect {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    @cats.collect {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    @dogs.each {|dog| dog.mood = "nervous"  
                      dog.owner = nil}
    @cats.each {|cat| cat.mood = "nervous"  
                      cat.owner = nil}
    @cats = []
    @dogs = []
  end
  
  def list_pets 
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
  
end