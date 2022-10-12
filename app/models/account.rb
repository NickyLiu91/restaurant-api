class Account < ApplicationRecord
  has_secure_password
  validates :name, uniqueness: { case_sensitive: false}

  has_one :restaurants
end
