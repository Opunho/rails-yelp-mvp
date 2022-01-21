class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  RATING = (0..5)
  validates :rating, presence: true, numericality: true, inclusion: { in: RATING }
end
