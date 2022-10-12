class OrderitemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  belongs_to :order
end
