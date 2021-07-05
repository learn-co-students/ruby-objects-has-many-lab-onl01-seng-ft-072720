require "pry"
class Song

   @@all = []

   attr_accessor :name, :artist

   def initialize(name)
     @name = name
     @@all << self
   end

   def artist=(artist)
     @artist = artist
   end

   def artist_name
      if @artist == nil
       nil
      else
      self.artist.name
      #binding.pry
      end
   end

   def self.all
     @@all
   end
end
