# responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).
require 'pry'

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
    #get all existing song instances from song
    #select only the ones associated with artist instances
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name()
    # Find the artist instance that has that name or create one if it doesn't exist. Either way, the return value of the method will be an instance of an artist with the name attribute filled out
  end
  
  def self.find(name)

  end
  
end