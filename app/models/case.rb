class Case < ApplicationRecord
    mount_uploaders :image, ImageUploader
    serialize :image, JSON # If you use SQLite, add this line.
    belongs_to :user, optional: true
    
    validates :brand, :model, :price, :title, :description, presence: true
    validates :description, length: {maximum: 1000, too_long: "#{count} quá dài rồi bạn, 1000 chữ thôi."}
    validates :title, length: {maximum: 300, too_long: "#{count} chữ, quá dài rồi bạn, 300 chữ thôi."}
    validates :price, numericality: { only_integer: true }, length: {maximum: 8}
    validates :model, inclusion: { in: %w(6s 7 8 6s+ 7+ 8+ X),
                                   message: "%{value} không có model này" }
    
    
end