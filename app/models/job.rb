# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  workspace  :string
#  message    :text
#  curriculum :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Job < ApplicationRecord
  has_paper_trail

  mount_uploader :curriculum, CurriculumUploader

  before_create :notify_email

  validates_presence_of :name, :email, :workspace, :message, :curriculum

  def notify_email
    JobMailer.notify_admin(name, email, workspace, message, curriculum, created_at).deliver
  end

end
