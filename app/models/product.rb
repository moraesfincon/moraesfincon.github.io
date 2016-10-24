# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  name           :string
#  image          :string
#  descrption     :text
#  public         :boolean          default(FALSE)
#  main           :boolean          default(FALSE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  order_position :integer
#  launch         :boolean          default(FALSE)
#

class Product < ApplicationRecord

  mount_uploader :image, ImageUploader

  validates :image, :name, :descrption, :order_position, presence: true


end
