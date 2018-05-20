class BrandPhoneModel < ApplicationRecord
  belongs_to :brand
  belongs_to :phone_model
end
