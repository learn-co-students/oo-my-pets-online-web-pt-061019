require 'pry'
class Owner
  attr_reader :owner
  attr_reader :species, :cats, :dogs
  attr_accessor :pets

  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    @@all << self
    @pets = {}
    @pets[:cats] = []
    @pets[:dogs] = []
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def name
    @owner
  end

  def buy_cat(name)
    cat = Cat.new(name,self)
    # @pets[:cats] << cat
  end

  def cats
    pets[:cats]
  end

  def buy_dog(name)
    dog = Dog.new(name,self)
    # @pets[:dogs] << dog
  end

  def dogs
    @pets[:dogs]
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def sell_pets
  # binding.pry
    @pets.each do |pet,mood|
      mood.each {|o|  o.mood = "nervous"}
      @pets
    end
  end

end
