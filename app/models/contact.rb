# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  occupation :string
#  email      :string
#  phone      :string
#  subject    :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ApplicationRecord
  extend Enumerize

  has_paper_trail

  before_create :notify_email

  validates :name, :email, :subject, :message, presence: true

  enumerize :occupation, in: {
    "Transportador": 1, "Embarcador": 2,
    "Frotista": 2, "Empresa de monitoramento": 3, "Outro": 4
  }

  def notify_email
    ContactMailer.notify_contact(email, name, phone, subject, message, created_at).deliver
    ContactMailer.notify_admin(email, name, phone, subject, message, created_at).deliver
  end

end
