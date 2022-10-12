class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  belongs_to :restaurant
end
