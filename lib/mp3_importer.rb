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
    #Dir.chdir(@filepath)
    @files = Dir.glob("#{@filepath}/*.mp3").collect { |file| file.gsub("#{@filepath}/","")}
    #binding.pry
    @files
  end

  def import
    @files.each { |filename| Song.new_by_filename(filename) }
  end

end

#newimport = MP3Importer.new("./spec/fixtures/mp3s")

#binding.pry
