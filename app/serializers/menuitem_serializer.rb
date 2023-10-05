class MenuitemSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers
  attributes :id, :name, :price, :image

  def image
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
  end

  # attributes :id, :name, :price, :image

  belongs_to :restaurant
end
