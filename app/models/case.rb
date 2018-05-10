class Case < ApplicationRecord
    mount_uploader :image, ImageUploader
    serialize :image, JSON # If you use SQLite, add this line.
    belongs_to :user, optional: true

    validates :brand, :model, :price, :title, :description, :quantity, presence: true
    validates :description, length: {maximum: 1000, too_long: "#{count} quá dài rồi bạn, 1000 chữ thôi."}
    validates :title, length: {maximum: 300, too_long: "#{count} chữ, quá dài rồi bạn, 300 chữ thôi."}
    validates :price, numericality: { only_integer: true }, length: {maximum: 8}
    BRAND = %w{Apple Samsung LG HTC Huawei }
    MODELIP = ["Iphone 6", "Iphone 6 plus", "Iphone 6s", "Iphone 6s plus", "Iphone 7", "Iphone 7 plus", "Iphone 8", "Iphone 8 plus", "Iphone X"]
end
