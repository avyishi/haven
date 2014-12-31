class TunesController < ApplicationController
  def index
     @tunes = Tune.all
  end

  def new
    @tune = Tune.new
  end

  def edit
    @tune = Topic.find(params[:id])
  end

  def show
    @tune = Tune.find(params[:id])
  end

  def create
    @tune = current_user.tunes.build(tune_params)
    if @movie.save
      redirect_to @tune, notice: 'Music Added!'
    else
      render action: 'new'
    end
  end

  def update
    @tune = Tune.find(params[:id])
    if @tune.update(tune_params)
      redirect_to @movie, notice: 'Movie successfully updated.'
    else
      render action: 'new'
    end
  end
end
