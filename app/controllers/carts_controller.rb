class CartsController < ApplicationController
  before_action :authenticate_user!
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
    if current_user.cart != @cart
      redirect_to wines_path
    end
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
