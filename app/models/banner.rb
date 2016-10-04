class Banner < ApplicationRecord
  mount_uploader :image, BannerUploader

  validates :title, :image, presence: true
  
end
