# == Schema Information
#
# Table name: flyers
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  file        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Flyer < ApplicationRecord
  mount_uploader :file, FileUploader

  validates_presence_of :title, :file


end
