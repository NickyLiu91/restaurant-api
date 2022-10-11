class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :rank, :restaurants

  has_many :restaurants
end
