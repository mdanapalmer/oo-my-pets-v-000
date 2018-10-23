class Owner
  attr_accessor :name, :pets, :mood
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    bubblz = Fish.new(name)
    @pets[:fishes] << bubblz
  end

  def buy_cat(name)
    crooks = Cat.new(name)
    @pets[:cats] << crooks
  end

  def buy_dog(name)
    fido = Dog.new(name)
    @pets[:dogs] << fido
  end

  def walk_dogs
    mood = "happy"
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
