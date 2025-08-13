class Review < ApplicationRecord
  belongs_to :restaurant # A review must belong to a restaurant.

  # A review must have a content.
  validates :content, presence: true
  # A review must have a rating.
  validates :rating, presence: true

  # A review’s rating must be a number between 0 and 5.
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
