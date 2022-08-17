class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :content, :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { :in => 0..5 }
end
