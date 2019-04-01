# == Schema Information
#
# Table name: dog_sitters
#
#  id         :integer          not null, primary key
#  first_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DogSitter < ApplicationRecord
  has_many :strolls
  has_many :dogs, through: :strolls
  belongs_to :city
end
