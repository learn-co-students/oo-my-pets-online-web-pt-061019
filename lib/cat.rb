class Cat

  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []

  def initialize(name_input,owner_input,mood_input="nervous")
    @name = name_input
    @owner = owner_input
    @mood = mood_input
    @@all << self
  end

  def self.all
    @@all
  end

end
