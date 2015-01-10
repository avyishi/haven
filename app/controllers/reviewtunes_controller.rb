class ReviewtunesController < ApplicationController
  before_action :set_reviewtune, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  respond_to :html

  def index
    @reviewtunes = Reviewtune.all
    respond_with(@reviewtunes)
  end

  def show
    respond_with(@reviewtune)
  end

  def new
    @reviewtune = Reviewtune.new
    respond_with(@reviewtune)
  end

  def edit
  end

  def create
    @reviewtune = Reviewtune.new(reviewtune_params)
    @reviewtune.user_id = current_user.id
    @reviewtune.save
    respond_with(@reviewtune)
  end

  def update
    @reviewtune.update(reviewtune_params)
    respond_with(@reviewtune)
  end

  def destroy
    @reviewtune.destroy
    redirect_to root_path
  end

  private
    def set_reviewtune
      @reviewtune = Reviewtune.find(params[:id])
    end

    def reviewtune_params
      params.require(:reviewtune).permit(:comment)
    end
end
