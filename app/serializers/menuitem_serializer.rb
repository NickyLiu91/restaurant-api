class MenuitemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  belongs_to :restaurant
end
