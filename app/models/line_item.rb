class LineItem < ApplicationRecord
  belongs_to :case
  belongs_to :cart

  def total_price
    c.price.to_i * quantity.to_i
  end
end
