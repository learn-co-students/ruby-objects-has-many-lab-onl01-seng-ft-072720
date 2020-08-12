class Author
    attr_accessor :name, :posts


    def initialize(name)
    @name = name
    posts = []

    end

    def posts
        Post.all.collect do |post|
            if post.author == self
                post
            end
        end
    end

    def add_post(post)
        self.posts << post
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        self.posts << post
        post.author = self
    end

    def self.post_count
        Post.all.length
    end

end