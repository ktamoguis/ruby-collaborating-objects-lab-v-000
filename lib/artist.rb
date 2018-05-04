class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs=[]
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def find_by_name(artistname)
    self.all.detect { |artists| artists.name == artistname }
  end

  def create_by_name(artistname)
    Artist.new(artistname)
  end

  def self.find_or_create_by_name(artistname)
    find_by_name(artistname) || create_by_name(artistname)
  end



end
