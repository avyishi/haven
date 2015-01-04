class WelcomeController < ApplicationController
  def index
    @movies = Movie.order('Created_at desc')
    @shows = Show.order('Created_at desc')
    @tunes = Tune.order('Created_at desc')
  end

  def about
  end

  def movie_params
     params.require(:movie).permit(:title, :image)
   end

   def show_params
     params.require(:show).permit(:title, :image)
  end
end
