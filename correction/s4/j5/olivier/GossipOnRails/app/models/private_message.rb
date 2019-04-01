# == Schema Information
#
# Table name: private_messages
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PrivateMessage < ApplicationRecord
end
