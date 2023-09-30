class Menuitem < ApplicationRecord
  belongs_to :restaurant

  has_one_attached :featured_image
end
