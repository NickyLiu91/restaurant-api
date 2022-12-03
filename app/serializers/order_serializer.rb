class OrderSerializer < ActiveModel::Serializer
  attributes :id, :totalPrice, :location, :orderItems, :status

  belongs_to :restaurant
end
