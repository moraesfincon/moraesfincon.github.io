# == Schema Information
#
# Table name: assistances
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  priority   :string
#  subject    :string
#  message    :text
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Assistance < ApplicationRecord
  extend Enumerize

  enumerize :status, in: {open: 0, attendance: 1, closed: 2 }
  enumerize :priority, in: {urgent: 0, medium: 1, low: 2 }
end
