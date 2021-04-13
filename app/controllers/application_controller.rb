require './config/environment'
require_all '../models'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get '/login' do
    #login page
  end

  get '/home' do
     #home, place to post, view options
  end

  post'/home' do
    #post the form 
  end

end
