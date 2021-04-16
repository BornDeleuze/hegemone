class UserController < ApplicationController
    
    post '/users/new' do
        @user = User.new(params)  
          if @user && @user.save
            session[:user_id] = @user.id
            erb :'users/home'
          else
            erb :'/users/signup'
          end
    end

    get '/users/signup' do
        erb :'users/signup'
    end

end