class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
     post = Post.new(post_title)
     add_post(post)
  end

  def self.post_count
     Post.all.count
  end
end

# def add_song(song)
#    song.artist = self
#   #binding.pry
# end
#
# def add_song_by_name(song_name)
#  #binding.pry
#    song = Song.new(song_name)
#    add_song(song)
# end
