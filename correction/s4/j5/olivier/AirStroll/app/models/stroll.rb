# == Schema Information
#
# Table name: strolls
#
#  id            :integer          not null, primary key
#  date          :datetime
#  dog_id        :integer
#  dog_sitter_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Stroll < ApplicationRecord
  belongs_to :dog
  belongs_to :dog_sitter

end
