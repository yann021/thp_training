class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event

  #fter_create :join_event

  def join_event
    AttendanceMailer.join_event(self).deliver_now
  end
end
