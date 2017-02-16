class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
