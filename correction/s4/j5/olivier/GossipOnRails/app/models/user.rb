# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  description :text
#  email       :string
#  age         :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ApplicationRecord
  has_many :cities_users
  has_many :cities, through: :cities_users
  has_many :gosips
end
