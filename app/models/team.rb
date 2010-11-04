class Team < ActiveRecord::Base

  # Associations ---------------------------------------------------------------
  has_many :matches

  has_many :league_teams
  has_many :leagues, :through => :league_teams
  # ----------------------------------------------------------------------------

  # Validations ----------------------------------------------------------------
  validates_presence_of :name
  # ----------------------------------------------------------------------------

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

