class Api::OrderitemsController < ApplicationController
  def index
    @orderitems = Orderitem.all
    render json: @orderitems
  end

  def show
    @orderitems = Orderitem.find(params[:id])
    render json: @orderitems
  end

  def new
    @orderitems = Orderitem.new
  end

  def create
    @orderitems = Orderitem.create(orderitems_params)
  end

  def edit
    @orderitems = Orderitem.find_by(id: params[:id])
  end

  def update
    @orderitems = Orderitem.find_by(id: params[:id])
    @orderitems.update(orderitems_params)
    render json: @orderitems
  end

  def destroy
    @orderitems = Orderitem.find_by(id: params[:id])
    @orderitems.destroy
  end

  private

  def orderitem_params
    params.require(:orderitem).permit(:restaurant_id, :totalPrice)
  end
end
