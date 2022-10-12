class Order < ApplicationRecord
  belongs_to :restaurant

  has_many :orderItems
end
