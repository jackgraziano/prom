class DressesController < ApplicationController
  def new
    @dress = Dress.new
  end

  def create
    @dress = Dress.new(params_dress)
    if @dress.save
      redirect_to dress_path(@dress)
    else
      render 'dresses/new'
    end
  end

  def show
    @dress = Dress.find(params[:id])
  end

  private
  def params_dress
    params.require(:dress).permit(:name, :size, :color, :obs)
  end

  def index
    @dresses = Dress.all
  end

end
