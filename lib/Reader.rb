# Goal: Reader reads the views/posts files
class Reader
  attr_accessor :files, :names

  # Step 1: collect all file names in an array
  def file_finder
    @files = Dir["views/posts/*"]
    @files = @files.collect {|file| file[5..-5]}
  end

  # def post_namer
  #   @names = (1..@files.count).collect do |num|
  #     #"post #{num}"
  #   end
  # end
end
