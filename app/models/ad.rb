# == Schema Information
#
# Table name: ads
#
#  id         :integer          not null, primary key
#  title      :string
#  image      :string
#  public     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ad < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates_presence_of :title, :image
end
