class AttendancesController < ApplicationController
  def index

    @attendances = Attendance.all

  end

  def new

  end

  def create

    @attendance = Attendance.new(attendee_id: current_user.id, event_id: Event.all.sample.id)
    @attendance.save
    redirect_to new_attendance_path

  end

end
