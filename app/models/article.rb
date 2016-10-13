# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  public      :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Article < ApplicationRecord

  validates :title, :description, presence: true

  def to_param
    "#{id}-#{title.parameterize}"
  end

end
