class Book < ApplicationRecord
  # validation
  validates :title, presence: true, length: { in: 1..15 }
  validates :price, presence: true, numericality: { greater_than: 0 }
end
