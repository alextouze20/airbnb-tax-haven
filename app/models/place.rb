class Place < ApplicationRecord
  has_many :citizenships
  belongs_to :user
  has_one_attached :thumbnail
  has_many_attached :photos

  validates :name, presence: true
  validates :min_income, presence: true
  validates :thumbnail, presence: true
end
