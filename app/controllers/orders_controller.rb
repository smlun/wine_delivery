class OrdersController < ApplicationController
  def create
    @wine = Wine.find(params[:wine_id])
    if Cart.last.orders.find_by(wine: @wine)
      @order = Cart.last.orders.find_by(wine: @wine)
      @order.quantity += params[:order][:quantity].to_i
      if @order.save
        redirect_to carts_path
      end
    else
      @order = Order.new()
      @order.wine = @wine
      @order.quantity = params[:order][:quantity]
      @order.cart = Cart.last
      if @order.save
        redirect_to carts_path
      end
    end
  end

  def update
  end

  def destroy
  end

end
