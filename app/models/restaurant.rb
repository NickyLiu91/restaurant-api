class Restaurant < ApplicationRecord
  belongs_to :account

  has_many :accounts
  has_many :orders
  has_many :menuitems
end
