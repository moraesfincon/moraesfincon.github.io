# == Schema Information
#
# Table name: soluctions
#
#  id         :integer          not null, primary key
#  name       :string
#  resume     :text
#  image      :string
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Soluction < ApplicationRecord
  mount_uploader :image, SoluctionUploader
  
  validates :name, :resume, :image, :order, presence: true

  validates_uniqueness_of :order
end
