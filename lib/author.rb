class Author 
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(posts)
    posts.author = self
  end
  
  def add_post_by_title(post_title)
    posts = Post.new(post_title)
    posts.author = self
  end 
  
  def self.post_count
    Post.all.length
  end 
  
  def posts
    Post.all
  end
end