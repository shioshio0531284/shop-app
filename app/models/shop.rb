class Shop < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :distroy

  validates :images, :name, :address, :phone_number, :price, presece: true
  validates :name,length: { in: 1..40, message: '40文字以内で入力してください' }
  validates :price, numericality: {only_integer: true, greater_than: 0, less_than: 9999999 }

end
