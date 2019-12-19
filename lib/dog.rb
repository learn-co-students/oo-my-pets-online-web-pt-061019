class Dog
  attr_reader :name,:dogs
  attr_accessor :mood,:owner

  @@all =[]

  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    @owner.dogs << self
  end
  def self.all
    @@all
  end
end
