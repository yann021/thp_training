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

require 'test_helper'

class StrollTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
