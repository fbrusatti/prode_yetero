class CreateLeagueTeams < ActiveRecord::Migration
  def self.up
    create_table :league_teams do |t|
      t.integer :league_id
      t.integer :team_id

      t.timestamps
    end
  end

  def self.down
    drop_table :league_teams
  end
end
