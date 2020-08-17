class Citizenship < ApplicationRecord
  belongs_to :user
  belongs_to :place
end
