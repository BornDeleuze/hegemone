class PlantsController < ApplicationController

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
    params.delete("action")
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
    params.delete("action")
    if plant.user == current_user
      @plant = Plant.find_by_id(params[:id])
      params.delete("_method")
      @plant.update(params)
      if @plant.update(params)
          redirect "/plants/#{@plant.id}"
      else
          redirect "plants/new"
      end
    else
      redirect "/plants/new"
    end
  end

  delete "/plants/:id" do
    if plant.user == current_user
      @plant = Plant.find_by_id(params[:id])
      @plant.destroy
      redirect "/home"
    else
      redirect "/plants/new"
    end
  end

  helpers do
    def build_list(list)
      return list.join(' and ') if list.size < 3
      list[-1] = "and " + list[-1]
      list.join(', ')
    end

    def list_gardens(user)
      garden_array = [] 
      user.plants.each do |plant|
          if garden_array.include?(plant.garden_name)
          else
              garden_array << plant.garden_name    
          end
      end
      build_list(garden_array)
    end
  end

end