require 'pry'

class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    @owner.cats << self
  end
  
  def self.all
    @@all
  end
  
  # def buy_cat(name)
  #   @owner.cats.count = 0
  #   @owner.cats.each do |cat|
  #   @owner.cats << self.new(name)
  # end
  #   @owner.cats.count += 1
  # end
end