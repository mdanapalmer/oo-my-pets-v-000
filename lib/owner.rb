class Owner
  attr_accessor :name

  @@all = []

  def initialize(name, species)
    @name = name
    @species = species
    @@all << self
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end


end
