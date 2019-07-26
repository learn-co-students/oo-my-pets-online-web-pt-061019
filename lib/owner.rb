class Owner
  attr_accessor :pets
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @species = species
    @name = name
    @@all << self 
  end

  def species
    @species = "human"
  end
  
  def say_species
    return "I am a #{@species}."
  end

  def self.all 
    @@all
  end

  def self.count 
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end
end