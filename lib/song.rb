# creating songs given each filename and sending the artist's name (a string) to the Artist class
# relies on the Artist instances to build associations.

class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
end