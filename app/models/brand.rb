class Brand < ApplicationRecord
  has_many :oplungs
  has_many :phonemodel,  through: :brand_phonemodels
  validates :title, presence: true, length: {maximum: 100}
end
