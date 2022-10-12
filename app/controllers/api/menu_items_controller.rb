class MenuItemsController < ApplicationController
  def index
    @menus = Menu.all
    render json: @menus
  end

  def show
    @menu = Menu.find(params[:id])
    render json: @menu
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.create(menu_params)
  end

  def edit
    @menu = Menu.find_by(id: params[:id])
  end

  def update
    @menu = Menu.find_by(id: params[:id])
    @menu.update(menu_params)
    render json: @menu
  end

  def destroy
    @menu = Menu.find_by(id: params[:id])
    @menu.destroy
  end

  private

  def menu_params
    params.require(:menu).permit(:restaurant_id, :name, :price)
  end
end
