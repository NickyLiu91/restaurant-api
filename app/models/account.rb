class Account < ApplicationRecord
  has_secure_password
  validates :name, uniqueness: { case_sensitive: false}

  # belongs_to :sourceRestaurant, class_name: 'Restaurant', optional: true
  belongs_to :restaurant, optional: true

  has_one :restaurant
end
