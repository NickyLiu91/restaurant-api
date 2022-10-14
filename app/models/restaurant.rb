class Restaurant < ApplicationRecord
  belongs_to :account
  # belongs_to :owner, :class_name => "Account"
  # belongs_to :owner, class_name: 'Account'

  # has_many :tables, class_name: 'Account'
  has_many :accounts
  has_many :orders
  has_many :menuitems
end
