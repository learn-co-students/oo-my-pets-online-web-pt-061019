class Owner

  attr_reader :name, :species

  @@all_owners = []
  @@all_cats = []
  @@all_dogs = []

  def initialize(name)
    @name = name
    @species = "human"
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



end
