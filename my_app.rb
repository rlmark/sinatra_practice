require 'sinatra'

class MyApp < Sinatra::Base

  get "/" do
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
