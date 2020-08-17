class Place < ApplicationRecord
  has_many :citizenships
  belongs_to :user
end
