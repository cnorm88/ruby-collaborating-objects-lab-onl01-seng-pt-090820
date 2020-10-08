# responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).

class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialized 
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
end