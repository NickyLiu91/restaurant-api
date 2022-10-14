class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :rank, :sourceRestaurant

  has_one :restaurant
  belongs_to :sourceRestaurant, optional: true
end
