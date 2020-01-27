class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
    @figures = Figure.all

    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmark.name = params['landmark']['name']
    @landmark.year_completed = params['landmark']['year_completed']
    @landmark.save

    redirect "/landmarks/#{@landmark.id}"
  end

  post '/landmarks' do
    @landmark = Landmark.create(name: params['landmark']['name'], year_completed: params['landmark']['year_completed'])
    redirect '/landmarks'
  end

end
