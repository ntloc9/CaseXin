class Phone < ApplicationRecord
  has_many :phonemodels
  validates :title, presence: true, length: {maximum: 100}
end
