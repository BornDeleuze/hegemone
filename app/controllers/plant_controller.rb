class PlantController < ApplicationController

  get '/plants' do
    @plants = Plant.all
    erb :'plants/index'
  end

  get '/plants/:id' do
    id = params['id']
    @plant = Plant.find_by_id(id)
    erb :'plants/show'
  end

  get '/plants/new' do 
    erb :'/plants/new'
  end

end