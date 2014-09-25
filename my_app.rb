require 'sinatra'
require './lib/Reader'

class MyApp < Sinatra::Base

  # if you want to make @ post avail to all route handlers,
  before do
    @post = Post.all
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

  get "/posts/:blogpost" do
    post = params[:blogpost]
    erb :"posts/#{post}"
  end

end
