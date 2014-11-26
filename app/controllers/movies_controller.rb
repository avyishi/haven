class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    render 'index' #to gette for now rid of the missing templa
  end
end
