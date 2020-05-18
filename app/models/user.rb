class User < ApplicationRecord
  has_many :shops, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :nickname, :password, presence: true
end
