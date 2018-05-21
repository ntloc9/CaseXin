class Phonemodel < ApplicationRecord
  has_many :brand, through: :brand_phonemodels
  has_many :oplungs
  belongs_to :phone
  validates :title, presence: true, length: {maximum: 100}
end
