require "pry"

class Owner

  attr_reader :name, :species, :pets

  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {dogs: [], cats: []}
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
    Cat.all.select { |kitty| kitty.owner == self }
  end

  def buy_cat(cat_name)
    kitty = Cat.new(cat_name, self)
    @pets[:cats] << kitty
  end

  def feed_cats
    self.cats.each { |kitty| kitty.mood = "happy"  }
  end





  def dogs
    Dog.all.select { |dog| dog.owner == self}
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
    @pets[:dogs] << dog
  end

  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy"  }
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
  end

def list_pets
  "I have #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  # binding.pry
end


end
