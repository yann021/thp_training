class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  after_create :attendee_send

  def attendee_send
    UserMailer.attendance_email(self).deliver_now
  end

end
