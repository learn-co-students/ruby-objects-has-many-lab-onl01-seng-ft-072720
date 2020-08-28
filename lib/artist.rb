require "pry" 
class Artist 
  
  attr_accessor :name, :song

  def initialize(name)
   self.name= name 
  end
  
   def songs 
    Song.all.select do |song|
      song.artist == self 
    end 
  end
  
  def add_song(song)
    song.artist = self
    
  end 
  
  def add_song_by_name(song_name)
  #binding.pry
  singer= Song.new(song_name) 
  add_song(singer)
  end 
 
  def self.song_count
    #binding.pry
    Song.all.count
  end 
  
  

 
 

end 































#   attr_accessor :name, :song
  

  
#   def initialize(name)
#     self.name= name 
#   end 
  
#   def songs 
#     Song.all.select do |song|
#       song.artist == self 
#     end 
#   end
 
# # def add_song(song)
# #   song.artist = self 
# # end

# end 