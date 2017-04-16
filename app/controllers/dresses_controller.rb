class DressesController < ApplicationController

  def index
    @colors = Color.all # for filtering
    if params[:color_id]
      @dresses = Dress.where(color: Color.find(params[:color_id]))
    else
      @dresses = Dress.all
    end
  end

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

  def edit
    @dress = Dress.find(params[:id])
  end

  def update
    @dress = Dress.find(params[:id])
    if @dress.update(params_dress)
      redirect_to dress_path(@dress)
    else
      render 'dresses/edit'
    end
  end

  private
  def params_dress
    params.require(:dress).permit(:name, :size, :color_id, :obs, :rental_price, :sale_price, :photo, :photo_cache)
  end

end
