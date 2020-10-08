# send the filenames to the Song class
# relies on Song in order to do its job of parsing filenames

class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob("#{path}/*.mp3").collect do |file|
      file.gsub("./spec/fixtures/mp3s/", "")
    end
  end
  
  def import
    # library = files.each do |filename|
    #   artist_name = filename.split(' - ')[0]
    #   artist = Artist.find_or_create_by_name(artist_name)
    #   song = Song.new_by_filename(filename)
    #   if Artist.all_artists.include?(artist_name) == false
    #       artist.add_song(song)
    #       artist.save
    #   end
    # end
    imported_files = self.files
    imported_files.each do |file|
      new_song = Song.new_by_filename(file)
    end
  end
  
  
end