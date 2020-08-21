class User < ApplicationRecord
  has_many :places, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :citizenships, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo

end
