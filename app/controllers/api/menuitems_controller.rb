class Api::MenuitemsController < ApplicationController
  def index
    @menuitems = Menuitem.all
    render json: @menuitems
  end

  def show
    @menuitem = Menuitem.find(params[:id])
    render json: @menuitem
  end

  def new
    @menuitem = Menuitem.new
  end

  def create
    @menuitem = Menuitem.create(menuitem_params)
    render json: @menuitem
  end

  def edit
    @menuitem = Menuitem.find_by(id: params[:id])
  end

  def update
    @menuitem = Menuitem.find_by(id: params[:id])
    @menuitem.update(menuitem_params)
    render json: @menuitem
  end

  def destroy
    @menuitem = Menuitem.find_by(id: params[:id])
    @menuitem.destroy
  end

  private

  def menuitem_params
    params.require(:menuitem).permit(:restaurant_id, :name, :price, :featured_image)
  end
end
