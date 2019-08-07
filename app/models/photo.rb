class Photo < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :subject, presence: true, length: { maximum: 100 }
  validates :caption, presence: true, length: { maximum: 100 }
end
