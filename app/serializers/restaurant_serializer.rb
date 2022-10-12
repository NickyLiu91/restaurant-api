class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location

  belongs_to :account
  has_many :orders
  has_many :menuitems
end
