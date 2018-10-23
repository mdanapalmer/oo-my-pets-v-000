class Owner
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def owner_count
    @@all.size
  end
  


  def self.all
    @@all
  end


end
