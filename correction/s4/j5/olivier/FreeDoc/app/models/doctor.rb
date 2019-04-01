# == Schema Information
#
# Table name: doctors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  zip_code   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :join_table_specialty_doctors
  has_many :specialties, through: :join_table_specialty_doctors
end
