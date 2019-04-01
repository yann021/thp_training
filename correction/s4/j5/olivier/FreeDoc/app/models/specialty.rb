# == Schema Information
#
# Table name: specialties
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Specialty < ApplicationRecord
  has_many :join_table_specialty_doctors
  has_many :doctors, through: :join_table_specialty_doctors
end
