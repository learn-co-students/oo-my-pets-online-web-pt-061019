class Dog

  attr_accessor :mood, :owner
  attr_reader  :name, :dogs

   @@all =[]

  def initialize(name, owner)
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
