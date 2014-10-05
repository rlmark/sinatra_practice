require 'time'
# Goal: Reader reads the views/posts files
class Post
  attr_accessor :title, :url, :date, :last_n_posts, :content, :icon

  def self.all
    Dir.glob("views/posts/*/*").collect do |filepath|
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
    @icon = /\/icons\/.*png|jpg|gif|jpeg/.match(content).to_s
  end

  def self.most_recent(n)
    # 1. This is all post objects sorted by date.
    posts = all.sort_by { |post| post.date }
    # 2. This is first nth post objects.
    recent_n_posts = posts[n-n...n]#.reverse
  end

  def self.paginate(n)
    all.each_slice(n).to_a#.unshift(0)
  end
end




#this makes an array of arrays, each is a array object of desired grouping of  post objects
  # def self.pages(n)
  #   all.each_slice(n).to_a.unshift(0)
  # end


# range_start = page * n - n
# posts = all.sort_by { |post| post.date }
# last_n_posts = posts[n-1...n+n] #[n...n + n]

# make a new method, take a page argument, page * 5 - n = start of range,

# in block, create new parameter. Could also have this as part of query string.
# add query string to end of page, then get page number out of params.


# have another  method, taking 2 arguments, one being how many pages, second being which page it's on.

# multiply n by page number, find the range

  # I have an array of post objects with content,
  # I want to display first 5 on the home page,
  # When user hits "back" I want the next 5 to load.
  # From there, when user hits forward, page will display next 5.




class Counter
  attr_accessor :minutes, :days, :weeks, :hours

  def self.all
    secs = Time.now - Time.parse("02/09/2014 09:00:00 -0700")
    self.new(secs)
  end

  def initialize(timediff)
    # puts "Original time in seconds #{timediff}"
    @minutes, @seconds = timediff.divmod(60)
    @hours, @minutes = @minutes.divmod(60)
    @days, @hours = @hours.divmod(24)
    @weeks, @days = @days.divmod(7)

    # puts "weeks #{@weeks}"
    # puts "days #{@days}"
    # puts "hours #{@hours}"
    # puts "minutes #{@minutes}"
    # puts "seconds #{@seconds}"
  end
end
