class Owner
  attr_reader :name, :species
  attr_accessor :pets
  
  @@all_owners = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners << self
    @pets = {:dogs => [], :cats => []}
  end
  
  def cats
    @pets[:cats]
  end
  
  def dogs 
    @pets[:dogs]
  end
  
  def say_species
    "I am a #{@species}."
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
  
    def buy_cat(name)
    Cat.new(name, self)
  end
    
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    @pets[:cats].map {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    @pets.map do |species, pets|
      pets.map do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
    pets.clear
  end
end
  
  def list_pets
    "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end