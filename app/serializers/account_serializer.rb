class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :rank
end
