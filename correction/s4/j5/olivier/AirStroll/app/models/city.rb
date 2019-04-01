# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  city_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ApplicationRecord
  has_many :dogs
  has_many :dog_sitters
end