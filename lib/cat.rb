class Cat
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    self.class.all << self
    owner.cats << self
  end

  def self.all
    @@all
  end

end
