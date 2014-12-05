class ReviewtvsController < ApplicationController
  before_action :set_reviewtv, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @reviewtvs = Reviewtv.all
  end

  def show
   
  end

  def new
    @reviewtv = Reviewtv.new
  end

  def edit
  end

  def create
    @reviewtv = Reviewtv.new(reviewtv_params)
    @reviewtv.user_id = current_user.id
    if @reviewtv.save
      redirect_to @reviewtv
    else
      render 'new'
    end  
  end

  def update
    @reviewtv.update(reviewtv_params)
  
  end

  def destroy
    @reviewtv.destroy
    redirect_to root_path
 
  end

  private
    def set_reviewtv
      @reviewtv = Reviewtv.find(params[:id])
    end

    def reviewtv_params
      params.require(:reviewtv).permit(:comment)
    end
end
