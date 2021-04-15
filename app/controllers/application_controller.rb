require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "supersecretsessionsecret"
  end

  get "/" do
    erb :index
  end

  post '/new' do
    User.create(user_name: params[:user_name], password: params[:password])    
  end

 #Index, Show, New, Create, Edit, Update, Delete
 
end
