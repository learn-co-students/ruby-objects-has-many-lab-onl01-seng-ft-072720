require "pry"

class Post

attr_accessor :author, :title #author only to access Author class

@@all = []

def initialize(title)
  @title = title
  save
end

def save
  @@all << self
end

def self.all
  @@all
end

def author_name
  # binding.pry
  if self.author == nil
    self.author
  else
    self.author.name
  end
end

end
