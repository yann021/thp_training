# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  doctor_id  :integer
#  patient_id :integer
#

class Appointment < ApplicationRecord
  belongs_to :doctor, dependent: :destroy
  belongs_to :patient
end
