# responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).

class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def songs
    #return array of all songs that belong to self
    #get all exiting song instances from song
    #select only the ones associated with artist instances
    Song.all.select do |song|
      Artist.all == self
    end
  end
  
  def add_song
    
  end
  
end