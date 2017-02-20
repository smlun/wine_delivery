class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      redirect_to @wine
    else
      render 'new'
    end
  end

  def new
    @wine = Wine.new
  end

  def edit
    @wine = Wine.find(params[:id])
  end

  def show
    @wine = Wine.find(params[:id])
    @order = Order.new
  end

  def update
    @wine = Wine.find(params[:id])
    if @wine.update(wine_params)
      redirect_to @wine
    else
      render 'edit'
    end
  end

  def destroy
    @wine = Wine.find(params[:id])
    @wine.destroy
    redirect_to wines_path
  end

  private
    def wine_params
      params.require(:wine).permit(:name, :year, :description, :price, :wine_image)
    end
end
