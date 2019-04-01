# == Schema Information
#
# Table name: city_users
#
#  id         :integer          not null, primary key
#  city_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CityUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
