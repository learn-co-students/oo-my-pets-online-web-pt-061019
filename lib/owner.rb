class Owner

  attr_reader :owner, :name, :species

   @@all = []
   @@owner_count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@owner_count += 1


  end

  def owner=(owner)
    @owner = owner
  end

  def say_species
    species = "I am a human."
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.count
    @@owner_count
  end

  def self.reset_all
    @@owner_count.clear 
    @@owner_count
  end
end
