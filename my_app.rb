require 'sinatra'
require './lib/Reader'

class MyApp < Sinatra::Base

  # if you want to make @ post avail to all route handlers,
  before do
    # @posts = Post.all
    @posts = Post.most_recent(5)
    @time = Counter.all
  end

  get "/" do
    erb :index
  end

  get "/about-me" do
    erb :about_me
  end

  get "/cute-pictures-of-animals" do
    erb :cute_pictures_of_animals
  end

  ### FOR THE SAKE OF PRACTICE
  post "/cute-pictures-of-animals" do
    #erb :cute_pictures_of_animals
    redirect to("/")
  end

# two options. find in array of all posts for title.

  get "/posts/:blogpost" do
    post = @posts.find {|post| post.title == params[:blogpost]}
    erb :"posts/#{post.date}/#{post.title}"
  end

end
