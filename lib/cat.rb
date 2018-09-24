class Cat
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end
  #we have an attr_reader for mood because we are just exposing this data?
  
  def self.name
    @name
  end
  
  def self.mood(new_mood)
    self.mood = (new_mood)
  end
  
end