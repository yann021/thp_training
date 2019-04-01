class User < ApplicationRecord
  has_many :events, through: :attendances
  has_secure_password
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
