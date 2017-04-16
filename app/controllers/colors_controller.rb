class ColorsController < ApplicationController
  def new
    @color = Color.new
  end

  def create
    @color = Color.new(colors_params)
    if @color.save
      redirect_to colors_path
    else
      render 'colors/new'
    end
  end

  def index
    @colors = Color.all.order(:name)
  end

  def edit
    @color = Color.find(params[:id])
  end

  def update
    @color = Color.find(params[:id])
    if @color.update(colors_params)
      redirect_to colors_path
    else
      render 'colors/update'
    end
  end

  private
  def colors_params
    params.require(:color).permit(:name, :code)
  end
end
