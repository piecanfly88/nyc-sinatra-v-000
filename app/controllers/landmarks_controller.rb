class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
    @figures = Figure.all

    erb :'landmarks/index'
  end

  get '/landmarks/new' do 
    erb :'figures/new'
  end
  
end
