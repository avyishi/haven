class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      redirect_to @movie, notice: 'Movie Added!'
    else
      render action: 'new'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    title = @movie.title

    if @movie.destroy
       flash[:notice] = "\"#{title}\" was deleted successfully."
       redirect_to @movie
     else
       flash[:error] = "There was an error deleting the movie."
       render :show
     end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def movie_params
     params.require(:movie).permit(:title)
   end
end
