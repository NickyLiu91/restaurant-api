class Api::OrdersController < ApplicationController
  # accepts_nested_attributes_for :orderItems
  skip_before_action :authorized, only: [:create]

  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    @order = Order.find(params[:id])
    render json: @order
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    render json: @order
  end

  def edit
    @order = Order.find_by(id: params[:id])
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.update(order_params)
    render json: @order
  end

  def destroy
    @order = Order.find_by(id: params[:id])
    @order.destroy
  end

  private

  def order_params
    params.require(:order).permit(:id, :restaurant_id, :totalPrice, :location, :status, :orderItems => [:id, :name, :price, :status])
  end
end
