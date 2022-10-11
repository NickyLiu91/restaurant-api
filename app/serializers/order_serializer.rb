class OrderSerializer < ActiveModel::Serializer
  attributes :id, :items

  belongs_to :restaurant
end
