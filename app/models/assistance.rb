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
  
  before_create :notify_email

  enumerize :status, in: {open: 0, attendance: 1, closed: 2 }
  enumerize :priority, in: {urgent: 0, medium: 1, low: 2 }

  def notify_email
    AssistenceMailer.notify_contact(email, name, phone, priority, subject, message, status, created_at).deliver
    AssistenceMailer.notify_admin(email, name, phone, priority, subject, message, status, created_at).deliver
  end
end
