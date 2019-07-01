require "pry"

class Owner

  attr_reader :name, :species

  @@all_owners = []
  @@all_cats = []
  @@all_dogs = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners << self
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.size
  end

  def self.reset_all
    @@all_owners.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    @@all_cats
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name, self)
    @@all_cats << cat
  end

  def feed_cats
    @@all_cats.each do |cat|
      cat.mood = "happy"
    end
  end





  def dogs
    @@all_dogs
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
    @@all_dogs << dog
  end

  def walk_dogs
    @@all_dogs.each do |dog|
      dog.mood = "happy"
      dog.mood
      # binding.pry
    end
    # binding.pry
  end




  def sell_pets
    @@all_cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @@all_dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

def list_pets
  "I have #{@@all_dogs.size} dog(s), and #{@@all_cats.size} cat(s)."
  binding.pry
end


end
