class OrderItemsController < ApplicationController
  def index
    @orderItems = OrderItems.all
    render json: @orderItems
  end

  def show
    @orderItems = OrderItems.find(params[:id])
    render json: @orderItems
  end

  def new
    @orderItems = OrderItems.new
  end

  def create
    @orderItems = OrderItems.create(orderItems_params)
  end

  def edit
    @orderItems = OrderItems.find_by(id: params[:id])
  end

  def update
    @orderItems = OrderItems.find_by(id: params[:id])
    @orderItems.update(orderItems_params)
    render json: @orderItems
  end

  def destroy
    @orderItems = OrderItems.find_by(id: params[:id])
    @orderItems.destroy
  end

  private

  def orderItems_params
    params.require(:orderItem).permit(:restaurant_id, :totalPrice)
  end
end
