class PlantController < ApplicationController

#Index, Show, New, Create, Edit, Update, Delete

  get '/plants' do
    erb :'sessions/home'
  end

  get '/plants/new' do 
    erb :'/plants/new'
  end

  get '/plants/:id' do
    id = params['id']
    @plant = Plant.find_by_id(id)
    erb :'plants/show'
  end

  post '/plants' do
  garden = Garden.find_or_create_by(name: params[:garden_name])

  plant = Plant.create(name: params[:name], 
      latin_name: params[:latin_name], 
      notes: params[:notes], 
      date_planted: params[:date_planted],
      garden_id: garden.id)

      if plant.save
        redirect "plants/#{plant.id}"
      else
        redirect "plants/new"
      end
  end

  



end