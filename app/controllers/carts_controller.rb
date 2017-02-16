class CartsController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.admin?
      @carts = Cart.all
    else
      redirect_to wines_path
      flash[:notice] = "Sorry. You do not have permission to access that page."
    end
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
