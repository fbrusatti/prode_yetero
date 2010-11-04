class Fixture < ActiveRecord::Base
  belongs_to :league

  has_many :weeks
end


# == Schema Information
#
# Table name: fixtures
#
#  id         :integer(4)      not null, primary key
#  league_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#  status     :string(255)
#  step       :string(255)
#

