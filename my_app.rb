require 'sinatra'
require './lib/Reader'

class MyApp < Sinatra::Base

  get "/" do

    # Gets all files, sets to an instance variable to use in erb
    @reader = Reader.new
    @reader.file_finder
    @reader.files

    # @reader.post_namer
    # @reader.names
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
