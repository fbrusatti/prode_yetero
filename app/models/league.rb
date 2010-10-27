class League < ActiveRecord::Base
  has_one :fixture
  has_one :standing
end

# == Schema Information
#
# Table name: leagues
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

