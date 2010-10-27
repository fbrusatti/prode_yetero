class Team < ActiveRecord::Base
  has_many :matches
end

# == Schema Information
#
# Table name: teams
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  match_id   :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

