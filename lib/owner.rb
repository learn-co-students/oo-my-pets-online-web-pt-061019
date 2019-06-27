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
    @pets[:cats] << cat
    # binding.pry
  end

  def cats
    pets[:cats]
  end

  def buy_dog(name)
    dog = Dog.new(name,self)
    @pets[:dogs] << dog
  end

  def dogs
    pets[:dogs]
  end

  def walk_dogs
    # it "walks the dogs which makes the dogs' moods happy" do
    #   dog = Dog.new("Daisy", @owner)
    #   @owner.walk_dogs
    #   expect(dog.mood).to eq("happy")
    # end
    binding.pry
    dog = Dog.new(dogs,self)
  end
end
