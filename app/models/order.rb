class Order < ApplicationRecord
  has_many :items, class_name: 'OrderItem'

  validates :name, :phone, :diachi, presence: true
  
end
