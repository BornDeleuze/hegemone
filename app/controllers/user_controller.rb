class UserController < ApplicationController
    
    get '/users' do
        @users = User.all
        erb :'users/index'
    end


    #create new user objects

    post '/users/new' do
        @user = User.create(user_name: params[:user_name], password: params[:password])    
        @user.save
        erb :'users/home'
    end

    get '/users/signup' do
        erb :'users/signup'
    end

end