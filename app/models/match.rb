class Match < ActiveRecord::Base
  belongs_to :week

  belongs_to :visitor, :class_name => "Team", :foreign_key => "visitor_id"
  belongs_to :local, :class_name => "Team", :foreign_key => "local_id"
end

# == Schema Information
#
# Table name: matches
#
#  id            :integer(4)      not null, primary key
#  week_id       :integer(4)
#  visitor_id    :integer(4)
#  local_id      :integer(4)
#  visitor_score :integer(4)      default(0)
#  local_score   :integer(4)      default(0)
#  date          :datetime
#  created_at    :datetime
#  updated_at    :datetime
#

