require 'sinatra'
require './lib/Reader'

class MyApp < Sinatra::Base

  # if you want to make @ post avail to all route handlers,
  before do
    @post = Post.all
    puts @pos.inspect
  end

  get "/" do
    # Gets all post objects, sets to an instance variable to use in erb
    erb :index
  end

  get "/about-me" do
    erb :about_me
  end

  get "/cute-pictures-of-animals" do
    erb :cute_pictures_of_animals
  end

# two options. find in array of all posts for title.

  get "/posts/:blogpost" do
    post = @post.find {|post| post.title == params[:blogpost]}
    erb :"posts/#{post.date}/#{post.title}"
  end

end
