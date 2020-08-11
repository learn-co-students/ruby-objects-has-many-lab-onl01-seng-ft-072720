require 'pry'

class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all
  end

  def add_post(name)
    name.author = self
  end

  def add_post_by_title(name)
    title = Post.new(name)
    title.author = self
  end

  def self.post_count
    Post.all.length
  end
end
