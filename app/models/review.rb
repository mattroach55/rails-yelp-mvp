class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], message: "Rating must be an integer between 0 and 5" }
  # validates :restaurant_id, presence: true # A review must have a parent restaurant.
  belongs_to :restaurant
end



# A review must have content and a rating. The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.


#   validates :size, inclusion: { in: %w(small medium large),
#     message: "%{value} is not a valid size" }
