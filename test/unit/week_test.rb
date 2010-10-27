require 'test_helper'

class WeekTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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
#

