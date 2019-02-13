class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end

# A review must have a parent r
# A review must have content and a rating. The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.
