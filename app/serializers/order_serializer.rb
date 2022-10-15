class OrderSerializer < ActiveModel::Serializer
  attributes :id, :totalPrice, :location, :orderItems

  belongs_to :restaurant
end
