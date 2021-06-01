class Product < ApplicationRecord
  has_attached_file :avatar, { validate_media_type: false, styles: {medium: "300x300>", thumb: "100x100>"} }
  validates_attachment :avatar, {
    # tweak as desired
    content_type: { content_type: ["image/png", "image/jpg", "image/jpeg", Paperclip::ContentTypeDetector::SENSIBLE_DEFAULT] }
  }
end
