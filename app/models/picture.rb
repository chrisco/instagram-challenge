class Picture < ActiveRecord::Base
attr_accessor
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/monkey.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 500.kilobytes
end
