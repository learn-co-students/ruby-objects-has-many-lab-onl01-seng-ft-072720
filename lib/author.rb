class Author
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

def posts
  Post.all.find_all {|post| post.author == self}
end

def add_post(name)
  name.author = self
end

def add_post_by_title(name)
  post = Post.new(name)
  post.author = self
end

def self.post_count
  Post.all.length
end





end
