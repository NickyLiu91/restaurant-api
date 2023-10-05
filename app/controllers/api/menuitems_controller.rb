class Api::MenuitemsController < ApplicationController
  include Rails.application.routes.url_helpers

  def image
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
end

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
    # puts menuitem_params
    puts "aaa"
    puts menuitem2_params
    puts "bbb"
    @menuitem = Menuitem.find_by(id: params[:id])
    @menuitem.update(menuitem2_params)
    render json: @menuitem
  end

  def destroy
    @menuitem = Menuitem.find_by(id: params[:id])
    @menuitem.destroy
  end

  private

  def menuitem_params
    params.require(:menuitem).permit(:restaurant_id, :name, :price, :image)
  end
  
  def menuitem2_params
    params.permit(:id, :restaurant_id, :name, :price, :image)
  end

end
