class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # When a restaurant is destroyed, all of its reviews must be destroyed as well.

  # A restaurant must have a name, an address and a category.
  # A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :name, presence: true
  validates :address, presence:true
  validates :category, presence:true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "only given categories" }

end
