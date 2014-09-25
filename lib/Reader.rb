# Goal: Reader reads the views/posts files
class Post
  attr_accessor :title, :url, :date

  def self.all
    Dir.glob("views/posts/*/*").collect do |filepath|
      a = filepath.split("/")
      self.new(a)
    end
  end

  def initialize(array)
    @title = array[-1].split(".")[0]
    @date = array[-2]
    @url = "/posts/#{@title}"
  end

end
