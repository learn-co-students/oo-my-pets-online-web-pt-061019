class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []

  def initialize(name, owner)
      @owner = owner
      @name = name
      @owner.dogs<<self
      @mood = "nervous"
      @@all << self
  end

  def self.all
    @@all
  end

  # def self.count
  #   @@all.length
  # end

end
