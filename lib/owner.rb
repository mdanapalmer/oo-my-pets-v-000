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
    pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  pets[:cats].each do |cat|
  cat.mood = "happy"
end
end

def feed_fish
  pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  pets.each do |species, pets|
    pets.each do |pet|
    pet.mood = "nervous"
  end
  pets.clear
end
end

def list_pets
  "I have #{pets[:fishes].size} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].count} cat(s)."
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
