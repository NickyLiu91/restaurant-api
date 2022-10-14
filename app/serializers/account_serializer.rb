class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :rank

  has_one :restaurant
  belongs_to :restaurant, optional: true
end
