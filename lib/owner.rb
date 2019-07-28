class Owner

  attr_reader :name, :species #this defines the attribute name

  @@all = []

  def initialize(name_input, species = "human") #we're giving the owner a name while we're creating a new instance
    @name = name_input
    @species = species #assigning my input into an attribute named @name -- each object then has an attribute called @name
    @@all << self
  end

  def say_species
    "I am a #{@species}."
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

  def cats
    Cat.all.select do |object|
      object.owner == self
    end
  end

  def dogs
    Dog.all.select do |object|
      object.owner == self
    end
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name,self) #self refers to the owner, which in this case is the class itself since we're coding in the Owner class
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name,self) #self refers to the owner, which in this case is the class itself since we're coding in the Owner class
  end

  def walk_dogs
    self.dogs.collect do |object|
      object.mood = "happy"
    end
  end

  def feed_cats
    self.cats.collect do |object|
      object.mood = "happy"
    end
  end

  def sell_pets
    self.dogs.collect do |object|
      object.mood = "nervous"
      object.owner = nil
    end
    self.cats.collect do |object|
      object.mood = "nervous"
      object.owner = nil
    end
  end

  def list_pets
    value_1 = self.dogs.count
    value_2 = self.cats.count
    return "I have #{value_1} dog(s), and #{value_2} cat(s)."
  end
  
end
