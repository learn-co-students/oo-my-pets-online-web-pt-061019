require 'pry'
class Owner
  attr_reader :owner
  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
    # binding.pry
  end

  def self.reset_all
    self.all.clear
  end
end
