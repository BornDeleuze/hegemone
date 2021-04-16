class SessionsController < ApplicationController


    get '/login' do
        erb :'sessions/login'
    end

    post '/login' do
        user = User.find_by(user_name: params[:user_name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            erb :'sessions/home'
        else
            redirect "/login"
        end
    end

    get '/logout' do
        session.clear
        redirect "/"
    end

end