class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 5
  }
  validate :rating_must_be_integer

  private

  def rating_must_be_integer
    errors.add(:rating, 'must be an integer') if rating && !rating.is_a?(Integer)
  end
end
