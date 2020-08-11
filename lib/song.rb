require_relative 'artist.rb'

class Song
attr_accessor :name, :artist

@@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end


def self.song_count
  Song.all.length
end

def self.all
  @@all
end

end
