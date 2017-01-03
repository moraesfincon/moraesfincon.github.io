# == Schema Information
#
# Table name: banners
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image       :string
#  public      :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Banner < ApplicationRecord
  has_paper_trail
  mount_uploader :image, BannerUploader

  validates :title, :image, presence: true

end
