class Oplung < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :brand
    belongs_to :phonemodel
    has_many :order_items
    has_many :image_attachments
    accepts_nested_attributes_for :image_attachments, allow_destroy: true, reject_if: proc { |attributes| attributes['image'].blank? }
    default_scope { where(active: true) }

    # mount_uploader :thumbnail, ThumbnailUploader
    # serialize :thumbnail, JSON # If you use SQLite, add this line.


    # validates :brand, :model, :price, :title, :description, :quantity, presence: true
    validates :description, length: {maximum: 1000, too_long: "#{count} quá dài rồi bạn, 1000 chữ thôi."}
    BRAND = %w{ Apple Samsung LG HTC Huawei }
    MODELIP = ["Iphone 6", "Iphone 6 plus", "Iphone 6s", "Iphone 6s plus", "Iphone 7", "Iphone 7 plus", "Iphone 8", "Iphone 8 plus", "Iphone X"]
end
