class OrderItem < ApplicationRecord
  belongs_to :oplung
  belongs_to :order
end
