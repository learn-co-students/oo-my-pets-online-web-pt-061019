class Owner
  attr_accessor :pets
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @species = species
    @name = name
    @@all << self 
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end

  def save
    @@all << self
  end 

  def species
    @species = "human"
  end
  
  def say_species
    return "I am a #{@species}."
  end

  def cats 
   @@all 
  end
  
  def buy_cat(name)
    
  end 

  def buy_dog(name)

  end 

  def walk_dogs
    
  end

  def feed_cats

  end

  def sell_pets 

  end 

  def list_pets

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