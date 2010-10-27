require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

