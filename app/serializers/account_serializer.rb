class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :rank

  has_many :restaurants
  belongs_to :restaurant, optional: true
end
