class Post
    attr_accessor :author, :title

    @@all = []

    def initialize(title)
        @title = title
        Post.all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author.class == Author ? self.author.name : nil
    end
end