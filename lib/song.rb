class Song
  attr_accessor :name, :artist

def initialize(song)
  @name = song
end

def self.new_by_filename(file_name)
  split_file = file_name.split(" - ")
  artist = Artist.find_or_create_by_name(split_file[0])
  new_song = Song.new(split_file[1])
  new_song.artist = artist
  artist.add_song(new_song)
  new_song
end



end