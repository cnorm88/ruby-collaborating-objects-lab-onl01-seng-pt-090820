# send the filenames to the Song class
# relies on Song in order to do its job of parsing filenames

class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    binding.pry
  end
  
  
end