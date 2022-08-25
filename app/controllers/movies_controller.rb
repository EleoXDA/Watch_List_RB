class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)
  end
end
