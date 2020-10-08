# send the filenames to the Song class
# relies on Song in order to do its job of parsing filenames

class MP3Importer
  
  attr_accessor :files
  def initialize(files)
    @files = files
  end
  
  
end