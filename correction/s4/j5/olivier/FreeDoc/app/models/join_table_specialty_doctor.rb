# == Schema Information
#
# Table name: join_table_specialty_doctors
#
#  id           :integer          not null, primary key
#  doctor_id    :integer
#  specialty_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class JoinTableSpecialtyDoctor < ApplicationRecord
end
