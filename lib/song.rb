class Song 
  
 
 attr_accessor :name, :artist
 
 def initialize(name)
   self.name= name
   @@all << self  
 end 
 
 @@all= []
 
 def self.all
   @@all 
 end
 
 
 def artist_name
   if self.artist
     self.artist.name 
   else 
     nil 
   end 
 end 
 
 end 



























#   attr_accessor :name, :artist 
  
#   @@all= []
  
#   def initialize(name)
#     self.name= name
#     @@all << self 
#   end 
# end 
  
  
#   def self.all 
#     @@all
#   end 
  
# #   def artist_name 
# #     if artist.name == songs 
# #       song
# #     else 
# #       nil 
# #     end 
# #   end 
# # end 