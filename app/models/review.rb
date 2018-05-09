class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, presence: true

end

  # has a rating (stored as integer) (FAILED - 13)
  # content cannot be blank (FAILED - 14)
  # rating cannot be blank (FAILED - 15)
  # parent restaurant cannot be nil (FAILED - 16)
  # rating should be an integer (FAILED - 17)
  # rating should be a number between 0 and 5 (FAILED - 18)
