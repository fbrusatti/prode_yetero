class League < ActiveRecord::Base
  include ActiveRecord::Transitions

  # Associations ---------------------------------------------------------------
  has_one :fixture, :dependent => :destroy
  has_one :standing, :dependent => :destroy

  belongs_to :owner, :class_name => 'User'

  has_many :league_teams
  has_many :teams, :through => :league_teams
  # ----------------------------------------------------------------------------

  # Validations ----------------------------------------------------------------
  validates_presence_of :name
  # ----------------------------------------------------------------------------

  # Callback's -----------------------------------------------------------------
  after_create :initialize

  def initialize
    self.create_fixture
  end
  # ----------------------------------------------------------------------------
  def to_s
    name
  end

 # Steps ----------------------------------------------------------------------
  def creation_steps
    %w[new teams fixture finish]
  end

  def current_step
    step || creation_steps.first
  end

  def next_step
    self.step = creation_steps[creation_steps.index(current_step)+1] unless last_step?
  end

  def previous_step
    self.step = creation_steps[creation_steps.index(current_step)-1] unless first_step?
  end

  def first_step?
    current_step == creation_steps.first
  end

  def last_step?
    current_step == creation_steps.last
  end
  # ----------------------------------------------------------------------------


  # State Machine --------------------------------------------------------------
  state_machine do
    state :started # first one is initial state
    state :actived
    state :playing
    state :finished

    event :finish do
      transitions :from => :actived, :to => :finished, :on_transition => :do_finish
    end
  end

  private

    def do_finish(finished_at = Time.now)
      self.updated_at = finished_at
    end
  # ----------------------------------------------------------------------------
end


# == Schema Information
#
# Table name: leagues
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  owner_id   :integer(4)
#  status     :string(255)
#  step       :string(255)
#

