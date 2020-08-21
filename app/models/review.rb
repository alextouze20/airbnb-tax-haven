class Review < ApplicationRecord
  belongs_to :user
  belongs_to :place

  validates :content, presence: true
  validates :rating, presence: true
end
