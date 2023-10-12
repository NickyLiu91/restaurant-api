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
    puts @menuitem_params
    @menuitem = Menuitem.find_by(id: params[:id])
    @menuitem.update(menuitem_params)
    render json: @menuitem
  end

  def removeImage
    puts @menuitem_params
    @menuitem = Menuitem.find_by(id: params[:id])
    @image = @menuitem.image
    @image.purge
    render json: @menuitem
  end

  def destroy
    @menuitem = Menuitem.find_by(id: params[:id])
    @menuitem.destroy
  end

  private

  def menuitem_params
    params.require(:menuitem).permit(:id, :restaurant_id, :name, :price, :image)
  end
  
  # def menuitem_params
  #   params.permit(:id, :restaurant_id, :name, :price, :image)
  # end

end
