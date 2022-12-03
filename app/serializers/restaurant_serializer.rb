class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :orders

  belongs_to :account
  has_many :orders
  has_many :menuitems
  has_many :accounts
end
