class Week < ActiveRecord::Base
  belongs_to :fixture
end


# == Schema Information
#
# Table name: weeks
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  fixture_id :integer(4)
#  from       :date
#  to         :date
#  created_at :datetime
#  updated_at :datetime
#  status     :string(255)
#  step       :string(255)
#

