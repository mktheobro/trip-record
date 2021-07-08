class Point < ApplicationRecord
  has_one_attached :image

  validates :address, presence: true
end
