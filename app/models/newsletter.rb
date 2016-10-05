class Newsletter < ApplicationRecord

  validates :email, presence: true
  validates :email, email_format: { message: "doesn't look like an email address" }
  
end
