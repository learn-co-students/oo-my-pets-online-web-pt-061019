require 'pry'

class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @cats = []
    @dogs = []
  end
  
  def species
    @species = "human"
  end
  
  def say_species
    "I am a human."
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
 
  def buy_cat(cat_name)
    # @owner.cats.count = 0
    # @owner.buy_cat(name)
    # @owner.cats.each do |cat|
    @cats << Cat.new(cat_name)
    # end
    # @owner.cats.count += 1
  end
end