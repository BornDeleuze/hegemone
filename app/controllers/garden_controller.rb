class GardenController < ApplicationController

    get '/gardens' do
        @gardens = Garden.all
        erb :'gardens/index'
    end
    
    get '/gardens/:id' do
        id = params['id']
        @garden = Garden.find_by_id(id)
        erb :'gardens/show'
    end
end
