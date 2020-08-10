class Song

attr_accessor :artist, :name, :song

@@all = []

def save
  @@all << self
end

def initialize(name)
  @name = name
  save
end


def self.all
  @@all
end

def artist_name
  if artist
    self.artist.name
  else
    nil
  end
end








end