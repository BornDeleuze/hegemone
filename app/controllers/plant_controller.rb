class PlantController < ApplicationController

#[X]Index, [x]Show, [x]New, [x]Create, Edit, Update, Delete

#index is the /users/home

#create is
  get '/plants/new' do 
    if logged_in?
      erb :'/plants/new'
    else
      redirect '/login'
    end
  end

#show is
  get '/plants/:id' do
    if logged_in?
      id = params['id']
      @plant = Plant.find_by_id(id)
      erb :'plants/show'
    else
      redirect '/login'
    end
  end

#create is
  post '/plants' do
    garden = Garden.find_or_create_by(name: params[:garden_name])
    plant = current_user.plants.build(params)
      if plant.save
        redirect "plants/#{plant.id}"
      else
        redirect "plants/new"
      end
  end

  #edit

  #update

  #delete

end