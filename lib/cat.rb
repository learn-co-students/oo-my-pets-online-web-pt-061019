class Cat
  attr_reader :name
  attr_accessor :mood, :owner
  
  @@all_cats = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all_cats << self
    @owner.pets[:cats] << self
  end
  
  def self.all
    @@all_cats
  end
end