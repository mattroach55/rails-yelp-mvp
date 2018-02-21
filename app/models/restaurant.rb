class Restaurant < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
  has_many :reviews, dependent: :destroy
end


# Schema:
#       t.string :name
#       t.string :address
#       t.string :phone_number
#       t.string :category

# validations:
# A restaurant must have at least a name and an address.
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
