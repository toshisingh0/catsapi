class OrderItemsController < ApplicationController
  def create
    @order_item = @order.order_items.new(order_params)
    @order.save
    session[:order_id] = @order.id
  end
  end

  def update
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attribute(order_params)
    @order_items = current_order.order_items
  end

  def destory
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = current_order.order_items
  end

  private
  def order_params
    params.require(:order_items).permit(:product_id, :quantity)
  end 

  def set_order
    @order = current_order
  end 


end
