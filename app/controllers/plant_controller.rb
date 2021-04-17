class PlantController < ApplicationController

  get '/home' do
    erb :'users/home'
  end

  get '/plants/new' do 
    if logged_in?
      erb :'/plants/new'
    else
      redirect '/login'
    end
  end

  get '/plants/:id' do
    if logged_in?
      id = params['id']
      @plant = Plant.find_by_id(id)
      erb :'plants/show'
    else
      redirect '/login'
    end
  end

  get '/gardens/:garden_name' do
    if logged_in?
      @garden_name = params[:garden_name]
      erb :'plants/garden'
    else
      redirect '/login'
    end
  end

  post '/plants' do
    plant = current_user.plants.build(params)
      if plant.save
        redirect "plants/#{plant.id}"
      else
        redirect "plants/new"
      end
  end

  get "/plants/:id/edit" do
    if logged_in?
      @plant = Plant.find_by_id(params[:id])
      erb :'plants/edit'
    else
      redirect '/login'
    end
  end

  patch "/plants/:id" do
    @plant = Plant.find_by_id(params[:id])
    params.delete("_method")
    @plant.update(params)
    if @plant.update(params)
        redirect "/plants/#{@plant.id}"
    else
        redirect "plants/new"
    end
  end

  delete "/plants/:id" do
    @plant = Plant.find_by_id(params[:id])
    @plant.destroy
    redirect "/home"
  end

end