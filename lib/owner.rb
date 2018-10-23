class Owner
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.reset_all
    @@all.clear
  end

  def count
    @@all.count
  end

  def self.all
    @@all
  end


end
