require "pry"
class Artist

   attr_accessor :name, :songs

   def initialize(name)
     @name = name
     @songs = []
   end

  def songs
      Song.all
      #binding.pry
  end

   def add_song(song)
      song.artist = self
     #binding.pry
   end

   def add_song_by_name(song_name)
    #binding.pry
      song = Song.new(song_name)
      add_song(song)
   end

   def self.song_count
      Song.all.count
   end
end


