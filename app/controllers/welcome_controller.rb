class WelcomeController < ApplicationController
  def index
    @movies = Movie.order('Created_at desc')
    @shows = Show.order('Created_at desc')
  end

  def about
  end
end
