class Owner
require 'pry'

  attr_accessor :owner,  :mood, :cats, :dogs
  attr_reader :species, :name

    @@all = []

    def initialize(name)
      @name = name
      @species = "human"
      @@all << self
      @cats =[]
      @dogs =[]
    end


    def say_species
      "I am a #{species}."
    end

    def self.all
      @@all
    end

    def self.reset_all
      @@all.clear

    end

    def self.count
      @@all.count
    end

    def buy_cat(name)
      nu_cat = Cat.new(name, self)
      nu_cat

    end

    def buy_dog(name)
      nu_dog = Dog.new(name, self)
      nu_dog
    end

    def walk_dogs
      @dogs.each {|dog| dog.mood = "happy"}
    end

    def feed_cats
      @cats.each {|cat| cat.mood = "happy"}
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

    def list_pets
      dogs_count = @dogs.size
      cats_count = @cats.count
      "I have #{dogs_count} dog(s), and #{cats_count} cat(s)."
    end

end
