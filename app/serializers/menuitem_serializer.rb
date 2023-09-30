class MenuitemSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers
  attributes :id, :name, :price, :featured_image
  
  def featured_image
    if object.featured_image.attached?
      {
        url: rails_blob_url(object.featured_image)
      }
    end
  end

  # attributes :id, :name, :price, :image

  belongs_to :restaurant
end
