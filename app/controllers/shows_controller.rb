class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create
    @show = current_user.shows.build(show_params)
    if @show.save
      redirect_to @show, notice: 'TV Show Added'
    else
      render action: 'new'
    end
  end

  def show
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      redirect_to @show, notice: 'TV Show successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @show = Show.find(params[:id])
    title = @show.title

    if @show.destroy
       flash[:notice] = "\"#{title}\" was deleted successfully."
       redirect_to @show
    else
       flash[:error] = "There was an error deleting the TV Show."
       render :show
    end
   
  end

  def show_params
     params.require(:show).permit(:title)
  end

end
