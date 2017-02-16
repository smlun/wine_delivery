class OrdersController < ApplicationController
  def create
    @wine = Wine.find(params[:wine_id])
    if current_user.cart.orders.find_by(wine: @wine)
      @order = current_user.cart.orders.find_by(wine: @wine)
      @order.quantity += params[:order][:quantity].to_i
    else
      @order = Order.new()
      @order.wine = @wine
      @order.quantity = params[:order][:quantity]
      @order.cart = current_user.cart
    end
    if @order.save
      redirect_to cart_path(current_user.cart)
    end
  end

  def update
  end

  def destroy
  end

end
