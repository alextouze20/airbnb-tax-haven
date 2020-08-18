class Place < ApplicationRecord
  has_many :citizenships
  belongs_to :user
  has_one_attached :thumbnail
  has_many_attached :photos
end
