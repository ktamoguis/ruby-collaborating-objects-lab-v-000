#require 'pry'

class MP3Importer

  attr_accessor :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def path
    @filepath
  end

  def files
    Dir.chdir @filepath
    @files = Dir.glob("*.mp3")
    @files
  end

  def import(@files)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

end
