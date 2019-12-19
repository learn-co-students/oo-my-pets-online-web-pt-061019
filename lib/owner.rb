class Owner

attr_reader :species,:name
attr_accessor :owner,:cats,:dogs

@@all = []


  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
    @cats = []
    @dogs = []
  end

  def self.count
    @@all.length
  end

   def say_species
     "I am a #{@species}."
   end

  def self.all
    @@all
  end

  def buy_cat(name)
    new_cat = Cat.new(name,self)
    new_cat #look at class relationship gets rid of redundantcy
  end

  def buy_dog(name)
    new_dog = Dog.new(name,self)
    new_dog #look at class relationship gets rid of redundantcy
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @dogs.clear
    @cats.clear
  end


   def self.reset_all
    @@all.clear
  end
  # def list_pets
  #     num_dogs = @pets[:dogs].size
  #     num_cats = @pets[:cats].size
  #     num_fish = @pets[:fishes].size
  #     return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  #   end
  def list_pets
    dog_list = @dogs.size
    cat_list = @cats.size
  return "I have #{dog_list} dog(s), and #{cat_list} cat(s)."
  end
end
