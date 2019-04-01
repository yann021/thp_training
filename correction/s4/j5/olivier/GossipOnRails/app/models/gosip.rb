# == Schema Information
#
# Table name: gosips
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gosip < ApplicationRecord
  belongs_to :user
  has_many :tags_gossips
  has_many :gosips, through: :tags_gosips
end
