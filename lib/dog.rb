class Dog
  attr_reader :name
  attr_accessor :mood, :owner
  
  @@all_dogs = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all_dogs << self
    @owner.pets[:dogs] << self
  end
  
  def self.all
    @@all_dogs
  end
end