# == Schema Information
#
# Table name: dogs
#
#  id         :integer          not null, primary key
#  name       :string
#  breed      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dog < ApplicationRecord
  has_many :strolls
  has_many :dog_sitters, through: :strolls
  belongs_to :city
end
