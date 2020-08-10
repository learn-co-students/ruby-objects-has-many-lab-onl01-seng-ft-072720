require 'pry'

class Song 
attr_accessor :artist, :name 

@@all = []

  def initialize(name)
    @name = name 
    @@all.push(self)
    end 

  def Song.all 
    @@all 
  end 
  
  def artist_name
    if artist.nil? 
      nil 
    else 
      artist.name 
    end 
  end 
      
  

end 