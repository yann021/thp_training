# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
end
