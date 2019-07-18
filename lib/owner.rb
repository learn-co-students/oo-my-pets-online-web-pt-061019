require 'pry'
class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
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
    @dogs.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @cats.map {|cat| cat.mood = "happy"}
  end

  def sell_pets
    @pets = @cats + @dogs
    @pets.map {|pet| pet.mood = "nervous"}
    # @cats.map {|cat| cat.owner.clear}
    # @dogs.map {|dog| dog.owner.clear}
  end
end
