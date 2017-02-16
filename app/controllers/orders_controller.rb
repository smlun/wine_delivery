class OrdersController < ApplicationController
  def create
    @wine = Wine.find(params[:wine_id])
    @order = Order.new()
    @order.wine = @wine
    @order.quantity = params[:order][:quantity]
    @order.cart = Cart.last
    if @order.save
      redirect_to carts_path
    end
  end

  def update
  end

  def destroy
  end
end
