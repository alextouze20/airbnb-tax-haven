class Place < ApplicationRecord
  has_many :citizenships, dependent: :destroy
  belongs_to :user
  has_one_attached :thumbnail
  has_many_attached :photos

  validates :name, presence: true
  validates :min_income, presence: true
  validates :thumbnail, presence: true

  has_many :reviews, dependent: :destroy
end
