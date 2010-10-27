class Standing < ActiveRecord::Base
  belongs_to :league
end

# == Schema Information
#
# Table name: standings
#
#  id         :integer(4)      not null, primary key
#  league_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

