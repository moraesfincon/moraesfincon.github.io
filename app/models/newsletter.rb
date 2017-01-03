# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Newsletter < ApplicationRecord
  has_paper_trail
  validates :email, presence: true
  validates :email, email_format: { message: "doesn't look like an email address" }

end
