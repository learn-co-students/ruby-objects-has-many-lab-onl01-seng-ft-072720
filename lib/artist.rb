class Artist 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
   
  end
 
   def songs
  songs = Song.all.select {|song| song.artist == self}
  end
  

 
  def self.song_count
 
 # count  = self.songs 
 
 
 # binding.pry 
 
a = Song.all
a.length 

end

def add_song(song)
  song.artist = self
end
  
   

  def add_song_by_name(name)
  song = Song.new(name)
    add_song(song)
end
  
end