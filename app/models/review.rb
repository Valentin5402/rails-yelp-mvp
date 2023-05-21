class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5, message: ": la note doit être entre 0 et 5" }
end
