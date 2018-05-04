class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new
    newfilename = filename.chomp(".mp3")
    song.title = newfilename.split(" - ")[1]
    song
  end


end
