class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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

  def self.find_or_create_by_name(artist)
   found_artist = self.all.find{|object| object.name == artist}
   if found_artist == nil 
    new_artist = self.new(artist)
    new_artist.save
    new_artist
  else
    found_artist
  end
  end

  def print_songs
    @songs.each{|object| puts object.name}
  end


end