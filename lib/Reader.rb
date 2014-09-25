# Goal: Reader reads the views/posts files
class Post
  attr_accessor :title, :url, :date, :last_n_posts, :content

  def self.all
    Dir.glob("views/posts/*/*").collect do |filepath|
      puts filepath
      c = File.read(filepath)
      a = filepath.split("/")
      self.new(a, c)
    end
  end

  def initialize(array, content)
    @title = array[-1].split(".")[0]
    @date = array[-2]
    @url = "/posts/#{@title}"
    @content = content
  end

  def self.most_recent(n)
    # 1. This is all post objects sorted by date.
    posts = all.sort_by { |post| post.date }
    # 2. This is first nth post objects.
    @last_n_posts = posts[0...n]
  end

end
