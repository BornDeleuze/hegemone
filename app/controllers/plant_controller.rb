class PlantController < ApplicationController

#[X]Index, [x]Show, [x]New, [x]Create, Edit, Update, Delete

#index is the /users/home

#create is
  get '/plants/new' do 
    erb :'/plants/new'
  end
#show is
  get '/plants/:id' do
    id = params['id']
    @plant = Plant.find_by_id(id)
    erb :'plants/show'
  end
#create is
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