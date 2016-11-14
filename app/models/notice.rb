# == Schema Information
#
# Table name: notices
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  public     :boolean
#  image      :string
#

class Notice < ApplicationRecord

	mount_uploader :image, NoticeUploader

  validates :title, :content, presence: true

end
