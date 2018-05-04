class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    #if (self.artist.nil?)
      #binding.pry
    if Artist.find_by_name(name) == false
      self.artist = Artist.new(name)
      Artist.all << self.artist
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist_name = filename.split(" - ")[0] #ask question about this
    #why not song.artist.name = filename.split(" - ")[0]
    song
  end


end
