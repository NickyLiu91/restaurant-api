class MenuitemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image

  belongs_to :restaurant
end
