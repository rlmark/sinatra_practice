require 'sinatra'
require './lib/Reader'

class MyApp < Sinatra::Base

  # if you want to make @ post avail to all route handlers,
  before do
    # @posts = Post.all
    @posts = Post.most_recent(5)
    # @posts = Post.pages(2)
    @time = Counter.all
    @page=1
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

  get "/posts/:blogpost" do
    post = @posts.find {|post| post.title == params[:blogpost]}
    erb :"posts/#{post.date}/#{post.title}"
  end

end
