require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

