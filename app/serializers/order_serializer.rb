class OrderSerializer < ActiveModel::Serializer
  attributes :id, :totalPrice, :location

  belongs_to :restaurant
end
