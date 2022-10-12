class OrderSerializer < ActiveModel::Serializer
  attributes :id, :totalPrice

  belongs_to :restaurant
  has_many :orderitems
end
