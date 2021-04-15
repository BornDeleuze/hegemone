class UserController < ApplicationController

    get '/users' do
        @sers = User.all
        erb :'users/index'
    end
end