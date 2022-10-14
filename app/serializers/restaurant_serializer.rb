class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :owner

  belongs_to :owner
  has_many :orders
  has_many :menuitems
  has_many :tables
end
